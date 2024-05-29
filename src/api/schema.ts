import { createClerkClient } from "@clerk/backend";
import SchemaBuilder from "@pothos/core";
import { desc, eq } from "drizzle-orm";
import { drizzle } from "drizzle-orm/d1";
import { type Snippet, snippetHighlights, snippets } from "~/db/schema";
import type { Env } from "~/env";
import { getHighlightCode } from "./highlight";
import type { User } from "./model";

export async function buildSchema(env: Env) {
	const db = drizzle(env.DB);
	const clerk = createClerkClient({
		secretKey: env.CLERK_SECRET_KEY,
	});

	const builder = new SchemaBuilder<{
		Objects: {
			User: User;
			Snippet: Snippet;
			HighlightedSnippet: Snippet & { highlightedCodeHtml: string };
		};
	}>({});

	builder.queryType({
		fields: (t) => ({
			snippets: t.field({
				description: "Get list of snippets",
				type: ["HighlightedSnippet"],
				args: {
					userId: t.arg.string(),
				},
				resolve: async (_, { userId }) =>
					db
						.select({
							id: snippets.id,
							userId: snippets.userId,
							title: snippets.title,
							code: snippets.code,
							language: snippets.language,
							postedAt: snippets.postedAt,
							highlightedCodeHtml: snippetHighlights.highlightedCodeHtml,
						})
						.from(snippets)
						.innerJoin(
							snippetHighlights,
							eq(snippets.id, snippetHighlights.snippetId),
						)
						.where(userId ? eq(snippets.userId, userId) : undefined)
						.orderBy(desc(snippets.postedAt))
						.limit(100),
			}),
			snippet: t.field({
				description: "Get a snippet by ID",
				type: "HighlightedSnippet",
				args: {
					id: t.arg.string({ required: true }),
				},
				resolve: async (_, { id }) => {
					const result = await db
						.select({
							id: snippets.id,
							userId: snippets.userId,
							title: snippets.title,
							code: snippets.code,
							language: snippets.language,
							postedAt: snippets.postedAt,
							highlightedCodeHtml: snippetHighlights.highlightedCodeHtml,
						})
						.from(snippets)
						.innerJoin(
							snippetHighlights,
							eq(snippets.id, snippetHighlights.snippetId),
						)
						.where(eq(snippets.id, id))
						.limit(1);

					if (result.length === 0) {
						throw new Error("Snippet not found");
					}

					return result[0];
				},
			}),
		}),
	});

	builder.mutationType({
		fields: (t) => ({
			createSnippet: t.field({
				description: "Create a snippet",
				type: "HighlightedSnippet",
				args: {
					userId: t.arg.string({ required: true }),
					title: t.arg.string({ required: true }),
					code: t.arg.string({ required: true }),
					language: t.arg.string({ required: true }),
				},
				resolve: async (_, { userId, title, code, language }) => {
					// Check if user exists
					await clerk.users.getUser(userId);

					const postedAt = new Date().toISOString();

					const snippetsResult = await db
						.insert(snippets)
						.values({
							id: crypto.randomUUID(),
							userId,
							title,
							code,
							language,
							postedAt,
						})
						.returning();

					if (snippetsResult.length === 0) {
						throw new Error("Failed to create snippet");
					}

					const highlightResult = await getHighlightCode(
						code,
						env.HIGHLIGHT_API_URL,
					);

					const snippetHighlightsResult = await db
						.insert(snippetHighlights)
						.values({
							snippetId: snippetsResult[0].id,
							highlightedCodeHtml: highlightResult.html,
						})
						.returning();

					if (snippetHighlightsResult.length === 0) {
						throw new Error("Failed to highlight snippet");
					}

					return {
						...snippetsResult[0],
						highlightedCodeHtml: snippetHighlightsResult[0].highlightedCodeHtml,
					};
				},
			}),
			deleteSnippet: t.field({
				description: "Delete a snippet",
				type: "HighlightedSnippet",
				args: {
					id: t.arg.string({ required: true }),
				},
				resolve: async (_, { id }) => {
					const snippetsResult = await db
						.delete(snippets)
						.where(eq(snippets.id, id))
						.returning();

					if (snippetsResult.length === 0) {
						throw new Error("Failed to delete snippet");
					}

					const snippetHighlightsResult = await db
						.delete(snippetHighlights)
						.where(eq(snippetHighlights.snippetId, id))
						.returning();

					return {
						...snippetsResult[0],
						highlightedCodeHtml: snippetHighlightsResult[0].highlightedCodeHtml,
					};
				},
			}),
		}),
	});

	builder.objectType("User", {
		fields: (t) => ({
			id: t.exposeString("id"),
			username: t.exposeString("username"),
			displayName: t.exposeString("displayName"),
			imageUrl: t.exposeString("imageUrl"),
		}),
	});

	builder.objectType("HighlightedSnippet", {
		fields: (t) => ({
			id: t.exposeString("id"),
			userId: t.exposeString("userId"),
			user: t.field({
				type: "User",
				resolve: async (parent) => {
					const user = await clerk.users.getUser(parent.userId);
					return {
						id: user.id,
						username: user.username ?? "",
						displayName: user.fullName ?? "",
						imageUrl: user.imageUrl,
					};
				},
			}),
			title: t.exposeString("title"),
			code: t.exposeString("code"),
			highlightedCodeHtml: t.exposeString("highlightedCodeHtml"),
			language: t.exposeString("language"),
			postedAt: t.exposeString("postedAt"),
		}),
	});

	return builder.toSchema();
}

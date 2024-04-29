import { createClerkClient } from "@clerk/backend";
import SchemaBuilder from "@pothos/core";
import { desc } from "drizzle-orm";
import { drizzle } from "drizzle-orm/d1";
import { type Snippet, snippets } from "~/db/schema";
import type { Env } from "~/env";
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
		};
	}>({});

	builder.queryType({
		fields: (t) => ({
			snippets: t.field({
				description: "List of snippets",
				type: ["Snippet"],
				resolve: async () =>
					db
						.select()
						.from(snippets)
						.orderBy(desc(snippets.postedAt))
						.limit(100),
			}),
		}),
	});

	builder.mutationType({
		fields: (t) => ({
			createSnippet: t.field({
				description: "Create a snippet",
				type: "Snippet",
				args: {
					userId: t.arg.string(),
					title: t.arg.string(),
					code: t.arg.string(),
					language: t.arg.string(),
				},
				resolve: async (_, { userId, title, code, language }) => {
					if (!userId) {
						throw new Error("User ID not found");
					}

					// Check if user exists
					await clerk.users.getUser(userId);

					if (!title) {
						throw new Error("Title is required");
					}

					if (!code) {
						throw new Error("Code is required");
					}

					if (!language) {
						throw new Error("Language is required");
					}

					const postedAt = new Date().toISOString();

					const result = await db
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

					if (result.length === 0) {
						throw new Error("Failed to create snippet");
					}

					return result[0];
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

	builder.objectType("Snippet", {
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
			language: t.exposeString("language"),
			postedAt: t.exposeString("postedAt"),
		}),
	});

	return builder.toSchema();
}

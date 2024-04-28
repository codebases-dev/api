import { createClerkClient } from "@clerk/backend";
import SchemaBuilder from "@pothos/core";
import { desc } from "drizzle-orm";
import { drizzle } from "drizzle-orm/d1";
import { type Snippet, type User, snippets } from "~/db/schema";
import type { Env } from "~/env";

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
			user: t.field({
				description: "A user",
				type: "User",
				args: {
					id: t.arg.string(),
				},
				resolve: async (_, { id }) => {
					if (!id) {
						throw new Error("User not found");
					}
					const user = await clerk.users.getUser(id);
					return {
						id: user.id,
						name: user.username ?? "",
					};
				},
			}),
			users: t.field({
				description: "List of users",
				type: ["User"],
				resolve: async () => {
					const { data: users } = await clerk.users.getUserList();
					return users.map((user) => ({
						id: user.id,
						name: user.username ?? "",
					}));
				},
			}),
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
					userId: t.arg.int(),
					code: t.arg.string(),
					language: t.arg.string(),
				},
				resolve: async (_, { userId, code, language }) => {
					if (!userId) {
						throw new Error("User not found");
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
							userId,
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
			name: t.exposeString("name"),
		}),
	});

	builder.objectType("Snippet", {
		fields: (t) => ({
			id: t.exposeInt("id"),
			userId: t.exposeInt("userId", { nullable: true }),
			code: t.exposeString("code"),
			language: t.exposeString("language"),
			postedAt: t.exposeString("postedAt"),
		}),
	});

	return builder.toSchema();
}

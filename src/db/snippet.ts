import { integer, sqliteTable, text } from "drizzle-orm/sqlite-core";
import { users } from "./user";

export const snippets = sqliteTable("snippets", {
	id: integer("id").primaryKey({ autoIncrement: true }).notNull(),
	userId: integer("userId")
		.references(() => users.id)
		.notNull(),
	code: text("code").notNull(),
	language: text("language").notNull(),
	postedAt: text("postedAt").notNull(),
});

export type Snippet = typeof snippets.$inferSelect;

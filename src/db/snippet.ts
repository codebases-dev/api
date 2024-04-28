import { sqliteTable, text } from "drizzle-orm/sqlite-core";
import { users } from "./user";

export const snippets = sqliteTable("snippets", {
	id: text("id").primaryKey().notNull(),
	userId: text("userId")
		.references(() => users.id)
		.notNull(),
	code: text("code").notNull(),
	language: text("language").notNull(),
	postedAt: text("postedAt").notNull(),
});

export type Snippet = typeof snippets.$inferSelect;

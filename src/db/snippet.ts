import {
	type AnySQLiteColumn,
	sqliteTable,
	text,
} from "drizzle-orm/sqlite-core";

export const snippets = sqliteTable("snippets", {
	id: text("id").primaryKey().notNull(),
	userId: text("userId").notNull(),
	title: text("title").notNull(),
	code: text("code").notNull(),
	language: text("language").notNull(),
	postedAt: text("postedAt").notNull(),
});

export type Snippet = typeof snippets.$inferSelect;

export const snippetHighlights = sqliteTable("snippetHighlights", {
	snippetId: text("snippetId")
		.primaryKey()
		.notNull()
		.references((): AnySQLiteColumn => snippets.id),
	highlightedCodeHtml: text("highlightedCodeHtml").notNull(),
});

export type SnippetHighlight = typeof snippetHighlights.$inferSelect;

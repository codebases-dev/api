CREATE TABLE `snippetHighlights` (
	`snippetId` text PRIMARY KEY NOT NULL,
	`highlightedCodeHtml` text NOT NULL,
	FOREIGN KEY (`snippetId`) REFERENCES `snippets`(`id`) ON UPDATE no action ON DELETE no action
);
--> statement-breakpoint
CREATE TABLE `snippets` (
	`id` text PRIMARY KEY NOT NULL,
	`userId` text NOT NULL,
	`title` text NOT NULL,
	`code` text NOT NULL,
	`language` text NOT NULL,
	`postedAt` text NOT NULL
);

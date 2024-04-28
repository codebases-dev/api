import { createYoga } from "graphql-yoga";
import { buildSchema } from "./api/schema";
import type { Env } from "./env";

let yogaCache: ReturnType<typeof createYoga> | undefined;

export async function getYoga(env: Env) {
	if (!yogaCache) {
		const schema = await buildSchema(env);
		yogaCache = createYoga({ schema });
	}

	return yogaCache;
}

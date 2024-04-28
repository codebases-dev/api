import type { Env } from "./env";
import { getYoga } from "./yoga";

export default {
	async fetch(
		request: Request,
		env: Env,
		ctx: ExecutionContext,
	): Promise<Response> {
		const yoga = await getYoga(env);
		return yoga(request, ctx);
	},
};

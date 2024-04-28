import { writeFileSync } from "node:fs";
import { lexicographicSortSchema, printSchema } from "graphql";
import { buildSchema } from "~/api/schema";
import type { Env } from "~/env";

const envMock = {} as Env;

buildSchema(envMock).then((schema) => {
	const schemaAsString = printSchema(lexicographicSortSchema(schema));
	writeFileSync("./graphql/schema.graphql", schemaAsString);
});

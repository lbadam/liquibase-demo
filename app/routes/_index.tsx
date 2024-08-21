import type { MetaFunction } from "@remix-run/node";
import type { LoaderFunction } from "@remix-run/node";

import { turso } from "~/lib/turso";



export const meta: MetaFunction = () => {
  return [
    { title: "New Remix App" },
    { name: "description", content: "Welcome to Remix!" },
  ];
};

export const loader: LoaderFunction = async () => {
  const { rows } = await turso.execute("SELECT * from todos");

  return {
    items: rows,
  };
};

import { NextApiRequest, NextApiResponse } from "next";
import * as fs from "fs";

export default async function handler(
  req: NextApiRequest,
  res: NextApiResponse
) {
  const filePath = "json/data.json";
  
  const fileContents = JSON.parse(await fs.promises.readFile(filePath, "utf8"));

  res.status(200).json(fileContents);
}

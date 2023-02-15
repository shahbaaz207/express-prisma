import express from "express";
import cors from "cors";
import root from "./routes";
import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();
const port = 3000;

const app = express();
app.use(cors());
app.use(express.json());

async function main() {
  root(app);
}

main()
  .then(async () => {
    await prisma.$disconnect();
  })
  .catch(async (e) => {
    console.error(e);
    await prisma.$disconnect();
    process.exit(1);
  });

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});

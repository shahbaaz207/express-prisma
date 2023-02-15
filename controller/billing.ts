import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();

const billing = async (req, res) => {
  console.log(req.body);
  const posts = await prisma.distributeurs.findMany({});
  console.log("posts", posts);
  res.status(200).json({
    msg: "Loged In",
    status: true,
    statusCode: 200,
  });
};

const updateBilling = async (req, res) => {
  console.log(req.body);
  const posts = await prisma.distributeurs.findMany({});
  console.log("posts", posts);
  res.status(200).json({
    msg: "Loged In",
    status: true,
    statusCode: 200,
  });
};

export { billing, updateBilling };

import { PrismaClient } from "@prisma/client";
const prisma = new PrismaClient();

const updateUser = async (req, res) => {
  console.log(req.body);
  const post = await prisma.distributeurs.findMany({
    // where: {},
    // data: {},
  });

  if (post) {
    res.status(200).json({
      msg: "Profile updated successfully",
      status: true,
      statusCode: 200,
    });
  } else res.status(400).json({ msg: "Error" });
};

const getDistributeurs = async (req, res) => {
  const { id } = req.params;
  const post = await prisma.distributeurs.findMany({
    // where: {},
    // data: {},
  });

  if (post) {
    res.status(200).json({
      msg: "Profile updated successfully",
      status: true,
      statusCode: 200,
    });
  } else res.status(400).json({ msg: "Error" });
};

export { updateUser, getDistributeurs };

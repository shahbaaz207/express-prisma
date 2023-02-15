import { PrismaClient } from "@prisma/client";
import { SECRET_KEY } from "../config/auth";
import jwt from "jsonwebtoken";

const prisma = new PrismaClient();

const signIn = async (req, res) => {
  const posts = await prisma.distributeurs.findMany({});
  let token = jwt.sign(
    {
      email: "ello.shahbaazali@gmail.com",
    },
    SECRET_KEY,
    {
      expiresIn: "2h",
    }
  );

  res.status(200).json({
    msg: "Loged In",
    status: true,
    statusCode: 200,
    accessToken: token,
  });
};

export { signIn };

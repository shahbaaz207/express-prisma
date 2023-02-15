import jwt from "jsonwebtoken";
import { SECRET_KEY } from "../config/auth";

const verifyToken = (req, res, next) => {
  let token = req.headers.authorization;
  if (token) {
    token = token.split("Bearer ")[1];
  }
  if (!token) {
    res.status(403).send({
      message: "No token provided",
    });
    return;
  }

  jwt.verify(token, SECRET_KEY, (err, decode) => {
    if (err) {
      return res.status(500).send({
        message: err,
      });
    }
    req.body.email = decode.email;
    next();
  });
};

const authJwt = {
  verifyToken,
};
export default authJwt;

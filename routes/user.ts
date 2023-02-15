import { updateUser, getDistributeurs } from "../controller";
import { authJwt } from "../middleware";

const user = (app) => {
  app.put("/updateUser", [authJwt.verifyToken], updateUser);
  app.get("/distributeurs", getDistributeurs);
};

export default user;

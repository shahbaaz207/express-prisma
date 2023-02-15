import { signIn } from "../controller";

const auth = function (app) {
  app.post("/login", signIn);
};

export default auth;

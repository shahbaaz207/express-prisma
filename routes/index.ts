import auth from "./auth";
import user from "./user";
import billingInfo from "./billing";
const root = (app) => {
  auth(app);
  user(app);
  billingInfo(app);
};

export default root;

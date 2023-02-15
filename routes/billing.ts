import { billing, updateBilling } from "../controller";

const billingInfo = function (app) {
  app.get("/billing", billing);
  app.put("/updateBilling", updateBilling);
};

export default billingInfo;

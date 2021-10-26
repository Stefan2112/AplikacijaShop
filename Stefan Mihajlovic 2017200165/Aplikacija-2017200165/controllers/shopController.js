const logger = require("../utils/log4j");
const resMsg = require("../utils/utils").resMsg;
const shopModel = require("../modules/shopModel");

class shopController {
  
  static async getShopInfo(req, res, next) {
    try {
      let result = await shopModel.getUserInfo();
      res.json(resMsg(200, result));
    } catch (error) {
      logger.error(error);
      res.json(resMsg());
    }
  }
}

module.exports = shopController;

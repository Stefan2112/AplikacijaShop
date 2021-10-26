const logger = require("../utils/log4j");
const rsaKey = require("../utils/rsa");
const resMsg = require("../utils/utils").resMsg;
const hasEmpty = require("../utils/utils").hasEmpty;
const getRandom = require("../utils/utils").getRandom;
const areaModel = require("../modules/areaModel");

class indexController {
 
  static async getPublicKey(req, res, next) {
    try {
      let publicKey = rsaKey.exportKey("public");
      res.json(resMsg(200, publicKey));
    } catch (error) {
      logger.error(error);
      res.json(resMsg());
    }
  }

 
  static async getProvince(req, res, next) {
    try {
      let result = await areaModel.getProvince();
      res.json(resMsg(200, result));
    } catch (error) {
      logger.error(error);
      res.json(resMsg());
    }
  }

  
  static async getCityByProvince(req, res, next) {
    try {
      if (hasEmpty(req.body.provinceId)) {
        res.json(resMsg(9001));
        return false;
      }
      let result = await areaModel.getCityByProvince(req.body.provinceId);
      res.json(resMsg(200, result));
    } catch (error) {
      logger.error(error);
      res.json(resMsg());
    }
  }

 
  static async getCountryByCity(req, res, next) {
    try {
      if (hasEmpty(req.body.cityId)) {
        res.json(resMsg(9001));
        return false;
      }
      let result = await areaModel.getCountryByCity(req.body.cityId);
      res.json(resMsg(200, result));
    } catch (error) {
      logger.error(error);
      res.json(resMsg());
    }
  }

  
  static async getDeliveryInfoById(req, res, next) {
    try {
      if (hasEmpty(req.body.id)) {
        res.json(resMsg(9001));
        return false;
      }
      let deliveryInfo = [
        {
          time: "2019-10-12 18:41:53",
          info: "123"
        },
        {
          time: "2019-10-12 20:31:14",
          info: "1234"
        },
        {
          time: "2019-10-13 12:32:54",
          info: "1 4 5,6"
        },
        {
          time: "2019-10-13 20:27:36",
          info: "2 5"
        },
        {
          time: "2019-10-13 21:19:24",
          info: "2 2,4 5"
        },
        {
          time: "2019-10-14 08:57:08",
          info: "1，3，4，5，亲，6，5，7，10，5，11，12"
        },
        {
          time: "2019-10-14 12:32:54",
          info: "【5】2 6"
        }
      ];
      let len = getRandom(2, deliveryInfo.length);
      let resObj = {
        infoArr: [],
        status: getRandom(0, 2)
      };
      for (let i = 0; i < len; i++) {
        resObj.infoArr.push(deliveryInfo[getRandom(0, len)]);
      }
      res.json(resMsg(200, resObj));
    } catch (error) {
      logger.error(error);
      res.json(resMsg());
    }
  }
}

module.exports = indexController;

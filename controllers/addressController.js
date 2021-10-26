const logger = require("../utils/log4j");
const resMsg = require("../utils/utils").resMsg;
const addressModel = require("../modules/addressModel");
const hasEmpty = require("../utils/utils").hasEmpty;


class addressController {
 
  static async getDefaultAddress(req, res, next) {
    try {
      let result = await addressModel.getDefaultAddress(req.session.loginId);
      res.json(resMsg(200, result));
    } catch (error) {
      logger.error(error);
      res.json(resMsg());
    }
  }

 
  static async getAddressList(req, res, next) {
    try {
      let result = await addressModel.getAddressList(req.session.loginId);
      res.json(resMsg(200, result));
    } catch (error) {
      logger.error(error);
      res.json(resMsg());
    }
  }

 
  static async getAddressById(req, res, next) {
    try {
      if (hasEmpty(req.body.id)) {
        res.json(resMsg(9001));
        return false;
      }
      let result = await addressModel.getAddressById(req.session.loginId, req.body.id);
      res.json(resMsg(200, result));
    } catch (error) {
      logger.error(error);
      res.json(resMsg());
    }
  }


 
  static async addAddress(req, res, next) {
    try {
      let {
        deliveryName,
        deliveryMobile,
        provinceId,
        cityId,
        countryId,
        detailAddress,
        isDefault
      } = req.body;
      if (hasEmpty(deliveryName, deliveryMobile, provinceId, cityId, countryId, detailAddress, isDefault)) {
        res.json(resMsg(9001));
        return false;
      }
      await addressModel.addAddress({
        userId: req.session.loginId,
        deliveryName,
        deliveryMobile,
        provinceId,
        cityId,
        countryId,
        detailAddress,
        isDefault: isDefault ? 1 : 0
      });
      res.json(resMsg(200));
    } catch (error) {
      logger.error(error);
      res.json(resMsg());
    }
  }

 
  static async updateAddress(req, res, next) {
    try {
      let {
        id,
        deliveryName,
        deliveryMobile,
        provinceId,
        cityId,
        countryId,
        detailAddress,
        isDefault
      } = req.body;
      if (hasEmpty(id, deliveryName, deliveryMobile, provinceId, cityId, countryId, detailAddress, isDefault)) {
        res.json(resMsg(9001));
        return false;
      }
      await addressModel.updateAddress({
        id,
        userId: req.session.loginId,
        deliveryName,
        deliveryMobile,
        provinceId,
        cityId,
        countryId,
        detailAddress,
        isDefault: isDefault ? 1 : 0
      });
      res.json(resMsg(200));
    } catch (error) {
      logger.error(error);
      res.json(resMsg());
    }
  }


  
  static async deleteAddress(req, res, next) {
    try {
      if (hasEmpty(req.body.id)) {
        res.json(resMsg(9001));
        return false;
      }
      let result = await addressModel.deleteAddress(req.session.loginId, req.body.id);
      res.json(resMsg(200, result));
    } catch (error) {
      logger.error(error);
      res.json(resMsg());
    }
  }
}

module.exports = addressController;

const db = require("../config/dbConnect");
const sequelize = db.sequelize;
const Op = sequelize.Op;
const shopUserSchema = sequelize.import("../schema/shopUserSchema");
const provinceSchema = sequelize.import("../schema/provinceSchema");
const citySchema = sequelize.import("../schema/citySchema");
const countrySchema = sequelize.import("../schema/countrySchema");
const shopUserDeliveryAddressSchema = sequelize.import("../schema/shopUserDeliveryAddressSchema");
const hasEmpty = require("../utils/utils").hasEmpty;
const getUncertainSqlObj = require("./../utils/utils").getUncertainSqlObj;

class shopUserModel {

  
  static async create(user) {
    return await shopUserSchema.create({
      ...user
    });
  }

  static async getUserInfo(name) {
    return await shopUserSchema.findOne({
      where: {
        name
      }
    });
  }

 
  static async getUserInfoClient(id) {
    return await shopUserSchema.findOne({
      attributes: ["name", "nickname", "sex", "email", "avatarUrl"],
      where: {
        id
      }
    });
  }

  
  static async update(parmas) {
    let {
      id,
      ...updateData
    } = parmas;
    return await shopUserSchema.update({
      ...updateData
    }, {
      where: {
        id
      }
    });
  }

  static async getPayPwd(userId) {
    return await shopUserSchema.findOne({
      attributes: ["payPwd"],
      where: {
        id: userId
      }
    });
  }

  
  static async setPayPwd(userId, payPwd) {
    return await shopUserSchema.update({
      payPwd
    }, {
      where: {
        id: userId
      }
    });
  }
}

module.exports = shopUserModel;

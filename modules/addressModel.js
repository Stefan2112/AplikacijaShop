const db = require("../config/dbConnect");
const sequelize = db.sequelize;
const provinceSchema = sequelize.import("../schema/provinceSchema");
const citySchema = sequelize.import("../schema/citySchema");
const countrySchema = sequelize.import("../schema/countrySchema");
const shopUserDeliveryAddressSchema = sequelize.import("../schema/shopUserDeliveryAddressSchema");

class addressModel {
  
  static async getDefaultAddress(userId) {
    shopUserDeliveryAddressSchema.belongsTo(provinceSchema, {
      foreignKey: "provinceId",
      targetKey: "provinceId"
    });
    shopUserDeliveryAddressSchema.belongsTo(citySchema, {
      foreignKey: "cityId",
      targetKey: "cityId"
    });
    shopUserDeliveryAddressSchema.belongsTo(countrySchema, {
      foreignKey: "countryId",
      targetKey: "countryId"
    });
    return await shopUserDeliveryAddressSchema.findOne({
      attributes: [
        "id",
        "detailAddress",
        ["deliveryName", "name"],
        ["deliveryMobile", "tel"],
        [sequelize.col("shop_delivery_province.name"), "provinceName"],
        [sequelize.col("shop_delivery_city.name"), "cityName"],
        [sequelize.col("shop_delivery_country.name"), "countryName"]
      ],
      include: [{
        model: provinceSchema,
        attributes: []
      }, {
        model: citySchema,
        attributes: []
      }, {
        model: countrySchema,
        attributes: []
      }],
      where: {
        isDefault: 1,
        userId,
        status: 0
      }
    });
  }

  
  static async getAddressList(userId) {
    shopUserDeliveryAddressSchema.belongsTo(provinceSchema, {
      foreignKey: "provinceId",
      targetKey: "provinceId"
    });
    shopUserDeliveryAddressSchema.belongsTo(citySchema, {
      foreignKey: "cityId",
      targetKey: "cityId"
    });
    shopUserDeliveryAddressSchema.belongsTo(countrySchema, {
      foreignKey: "countryId",
      targetKey: "countryId"
    });
    return await shopUserDeliveryAddressSchema.findAll({
      attributes: [
        "id",
        "detailAddress",
        "isDefault",
        ["deliveryName", "name"],
        ["deliveryMobile", "tel"],
        [sequelize.col("shop_delivery_province.name"), "provinceName"],
        [sequelize.col("shop_delivery_city.name"), "cityName"],
        [sequelize.col("shop_delivery_country.name"), "countryName"]
      ],
      include: [{
        model: provinceSchema,
        attributes: []
      }, {
        model: citySchema,
        attributes: []
      }, {
        model: countrySchema,
        attributes: []
      }],
      where: {
        userId,
        status: 0
      },
      raw: true,
      order: [
        "id"
      ]
    });
  }

  
  static async getAddressById(userId, id) {
    shopUserDeliveryAddressSchema.belongsTo(provinceSchema, {
      foreignKey: "provinceId",
      targetKey: "provinceId"
    });
    shopUserDeliveryAddressSchema.belongsTo(citySchema, {
      foreignKey: "cityId",
      targetKey: "cityId"
    });
    shopUserDeliveryAddressSchema.belongsTo(countrySchema, {
      foreignKey: "countryId",
      targetKey: "countryId"
    });
    return await shopUserDeliveryAddressSchema.findOne({
      attributes: {
        include: [
          [sequelize.col("shop_delivery_province.name"), "provinceName"],
          [sequelize.col("shop_delivery_city.name"), "cityName"],
          [sequelize.col("shop_delivery_country.name"), "countryName"]
        ],
        exclude: ["userId"]
      },
      include: [{
        model: provinceSchema,
        attributes: []
      }, {
        model: citySchema,
        attributes: []
      }, {
        model: countrySchema,
        attributes: []
      }],
      where: {
        userId,
        id,
        status: 0
      },
      raw: true
    });
  }

 
  static async addAddress(param) {
    if (param.isDefault) {
      await shopUserDeliveryAddressSchema.update({
        isDefault: 0
      }, {
        where: {
          userId: param.userId
        }
      });
    }
    return await shopUserDeliveryAddressSchema.create({
      ...param
    });
  }


  static async updateAddress(param) {
    if (param.isDefault) {
      await shopUserDeliveryAddressSchema.update({
        isDefault: 0
      }, {
        where: {
          userId: param.userId
        }
      });
    }
    return await shopUserDeliveryAddressSchema.update({
      ...param
    }, {
      where: {
        id: param.id,
        userId: param.userId
      }
    });
  }


 
  static async deleteAddress(userId, id) {
    return await shopUserDeliveryAddressSchema.update({
      status: 1
    }, {
      where: {
        userId,
        id
      }
    });
  }
}

module.exports = addressModel;

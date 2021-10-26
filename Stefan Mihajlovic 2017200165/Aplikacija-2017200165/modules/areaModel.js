const db = require("../config/dbConnect");
const sequelize = db.sequelize;
const provinceSchema = sequelize.import("../schema/provinceSchema");
const citySchema = sequelize.import("../schema/citySchema");
const countrySchema = sequelize.import("../schema/countrySchema");

class indexModel {
  
  static async getProvince() {
    return await provinceSchema.findAll({
      attributes: {
        exclude: ["id"]
      },
    });
  }

  static async getCityByProvince(provinceId) {
    return await citySchema.findAll({
      attributes: {
        exclude: ["id", "provinceId"]
      },
      where: {
        provinceId
      }
    });
  }

  
  static async getCountryByCity(cityId) {
    return await countrySchema.findAll({
      attributes: {
        exclude: ["id", "cityId"]
      },
      where: {
        cityId
      }
    });
  }
}

module.exports = indexModel;
const db = require("../config/dbConnect");
const sequelize = db.sequelize;
const Op = sequelize.Op;
const shopUserCartListSchema = sequelize.import("../schema/shopUserCartListSchema");

class cartListModel {

  
  static create(obj) {
    return shopUserCartListSchema.create(obj);
  }

  static async getUserCartList(userId) {
    return await shopUserCartListSchema.findAll({
      where: {
        userId
      }
    });
  }

 
  static async deleteCart(userId, ids) {
    return await shopUserCartListSchema.destroy({
      where: {
        userId,
        id: {
          [Op.in]: ids.split(",")
        }
      }
    });
  }

 
  static async getCartById(userId, ids) {
    return await shopUserCartListSchema.findAll({
      where: {
        userId,
        id: {
          [Op.in]: ids.split(",")
        }
      }
    });
  }

  static async updateCartCount(userId, id, count) {
    return await shopUserCartListSchema.update({
      count
    }, {
      where: {
        userId,
        id
      }
    });
  }
}

module.exports = cartListModel;

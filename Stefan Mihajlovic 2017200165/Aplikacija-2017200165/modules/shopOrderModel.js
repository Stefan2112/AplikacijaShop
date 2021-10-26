const db = require("../config/dbConnect");
const sequelize = db.sequelize;
const Op = sequelize.Op;
const shopOrderListSchema = sequelize.import("../schema/shopOrderListSchema");
const shopSubOrderListSchema = sequelize.import("../schema/shopSubOrderListSchema");
const shopUserCartListSchema = sequelize.import("../schema/shopUserCartListSchema");
const shopDeliveryCompanySchema = sequelize.import("../schema/shopDeliveryCompanySchema");
const shopUserDeliveryAddressSchema = sequelize.import("../schema/shopUserDeliveryAddressSchema");
const shopRefundRecordSchema = sequelize.import("../schema/shopRefundRecordSchema");
const bookListSchema = sequelize.import("../schema/bookListSchema");
const getUncertainSqlObj = require("./../utils/utils").getUncertainSqlObj;

class shopOrderModel {
 
  static async getOrderList(parmas, userId) {
    let {
      pageSize,
      pageNumber,
      status
    } = parmas;
    let searchObj = getUncertainSqlObj({
      status
    });
    shopOrderListSchema.hasMany(shopSubOrderListSchema, {
      foreignKey: "mainOrderId",
      sourceKey: "id",
      as: {
        singular: "orders",
        plural: "orders"
      }
    });
    let result = await shopOrderListSchema.findAndCountAll({
      offset: pageSize * (pageNumber - 1),
      limit: pageSize,
      where: {
        userId,
        ...searchObj
      },
      include: [{
        model: shopSubOrderListSchema,
        as: "orders"
      }],
      order: [
        ["id", "DESC"]
      ],
      distinct: true
    });
    return {
      pageSize,
      pageNumber,
      rows: result.rows,
      total: result.count
    };
  }

 
  static async getOrderByOrderId(id, userId) {
    shopOrderListSchema.hasMany(shopSubOrderListSchema, {
      foreignKey: "mainOrderId",
      sourceKey: "id",
      as: {
        singular: "orders",
        plural: "orders"
      }
    });
    return await shopOrderListSchema.findOne({
      where: {
        id,
        userId
      },
      include: [{
        model: shopSubOrderListSchema,
        as: "orders"
      }],
      distinct: true
    });
  }


  
  static async getSubOrderInfo(idsArr) {
    return await shopUserCartListSchema.findAll({
      where: {
        id: {
          [Op.in]: idsArr
        }
      }
    });
  }

  
  static async createOrder(param) {
    return await shopOrderListSchema.create(param);
  }

  
  static async createSubOrder(paramsArr) {
    return await shopSubOrderListSchema.bulkCreate(paramsArr);
  }

  
  static async updateStock(id, reduceCount) {
    let str = `-${reduceCount}`;
    return await bookListSchema.update({
      stock: sequelize.literal("`stock` " + str),
      updatedAt: new Date()
    }, {
      where: {
        id
      }
    });
  }

  static async updateOrderPayment(orderId) {
    return await shopOrderListSchema.update({
      status: 1,
      dealAt: new Date()
    }, {
      where: {
        orderId,
        status: 0
      }
    });
  }

  
  static async submitRefundOrder(params) {
    let {id, remark, userId} = params;
    return await shopOrderListSchema.update({
      status: 6,
      remark,
      updatedAt: new Date()
    }, {
      where: {
        id,
        userId,
        status: {
          [Op.in]: [1, 2, 3, 4, 5]
        }
      }
    });
  }

 
  static async submitOrderComplete(params) {
    let {id, userId} = params;
    return await shopOrderListSchema.update({
      status: 5,
      updatedAt: new Date()
    }, {
      where: {
        id,
        userId,
        status: {
          [Op.in]: [3, 4]
        }
      }
    });
  }
}


module.exports = shopOrderModel;

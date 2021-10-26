const logger = require("../utils/log4j");
const resMsg = require("../utils/utils").resMsg;
const cartListModel = require("../modules/cartListModel");
const bookListModel = require("../modules/bookListModel");
const hasEmpty = require("../utils/utils").hasEmpty;


class cartListController {
 
  static async getUserCartList(req, res, next) {
    try {
      let result = await cartListModel.getUserCartList(req.session.loginId);
      res.json(resMsg(200, result));
    } catch (error) {
      logger.error(error);
      res.json(resMsg());
    }
  }

  
  static async addCart(req, res, next) {
    try {
      if (hasEmpty(req.body.bookId, req.body.count)) {
        res.json(resMsg(9001));
        return false;
      }
      let {
        id, name, author, press, title, description,
        price, salePrice, stock, imageUrl
      } = await bookListModel.getBookInfoById(req.body.bookId);
      let obj = {
        bookId: id,
        userId: req.session.loginId,
        count: req.body.count,
        name,
        author,
        press,
        title,
        description,
        price,
        salePrice,
        stock,
        imageUrl
      };
      await cartListModel.create(obj);
      res.json(resMsg(200));
    } catch (error) {
      logger.error(error);
      res.json(resMsg());
    }
  }

  
  static async deleteCart(req, res, next) {
    try {
      if (hasEmpty(req.body.ids)) {
        res.json(resMsg(9001));
        return false;
      }
      let result = await cartListModel.deleteCart(req.session.loginId, req.body.ids);
      res.json(resMsg(200, result));
    } catch (error) {
      logger.error(error);
      res.json(resMsg());
    }
  }

  
  static async getCartById(req, res, next) {
    try {
      if (hasEmpty(req.body.ids)) {
        res.json(resMsg(9001));
        return false;
      }
      let result = await cartListModel.getCartById(req.session.loginId, req.body.ids);
      res.json(resMsg(200, result));
    } catch (error) {
      logger.error(error);
      res.json(resMsg());
    }
  }

  
  static async updateCartCount(req, res, next) {
    try {
      let {id, count} = req.body;
      if (hasEmpty(id, count) || count <= 0 || count > 10) {
        res.json(resMsg(9001));
        return false;
      }
      let result = await cartListModel.updateCartCount(req.session.loginId, id, count);
      res.json(resMsg(200, result));
    } catch (error) {
      logger.error(error);
      res.json(resMsg());
    }
  }
}

module.exports = cartListController;

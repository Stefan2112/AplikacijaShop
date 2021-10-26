const logger = require("../utils/log4j");
const resMsg = require("../utils/utils").resMsg;
const hasEmpty = require("../utils/utils").hasEmpty;
const bookListModel = require("../modules/bookListModel");

class bookListController {
 
  static async getAllClassify(req, res, next) {
    try {
      let result = await bookListModel.getAllClassify();
      res.json(resMsg(200, result));
    } catch (error) {
      logger.error(error);
      res.json(resMsg());
    }
  }

  static async getRandClassify(req, res, next) {
    try {
      let data = await bookListModel.getRandClassify();
      let resData = [];
      for (let i = 0, len = data.length; i < len; i++) {
        let obj = {
          id: data[i].id,
          title: data[i].name,
          data: []
        };
        obj.data = await bookListModel.getGoodByClassifyId(data[i].id);
        resData.push(obj);
      }
      res.json(resMsg(200, resData));
    } catch (error) {
      logger.error(error);
      res.json(resMsg());
    }
  }

  
  static async getHotGood(req, res, next) {
    try {
      let result = await bookListModel.getHotGood(req.body.all);
      res.json(resMsg(200, result));
    } catch (error) {
      logger.error(error);
      res.json(resMsg());
    }
  }

 
  static async getSaleGood(req, res, next) {
    try {
      let result = await bookListModel.getSaleGood(req.body.all);
      res.json(resMsg(200, result));
    } catch (error) {
      logger.error(error);
      res.json(resMsg());
    }
  }

  
  static async getDiscoverGood(req, res, next) {
    try {
      let result = await bookListModel.getDiscoverGood();
      res.json(resMsg(200, result));
    } catch (error) {
      logger.error(error);
      res.json(resMsg());
    }
  }

 
  static async getBookInfoById(req, res, next) {
    try {
      let id = req.body.id;
      if (hasEmpty(id)) {
        res.json(resMsg(9001));
        return false;
      }
      let result = await bookListModel.getBookInfoById(id);
      res.json(resMsg(200, result));
    } catch (error) {
      logger.error(error);
      res.json(resMsg());
    }
  }

  static async searchBook(req, res, next) {
    try {
      let search = req.body.search;
      if (search === "") {
        res.json(resMsg(200, []));
        return false;
      }
      if (hasEmpty(search)) {
        res.json(resMsg(9001));
        return false;
      }
      let result = await bookListModel.searchBook(search);
      res.json(resMsg(200, result));
    } catch (error) {
      logger.error(error);
      res.json(resMsg());
    }
  }
}

module.exports = bookListController;

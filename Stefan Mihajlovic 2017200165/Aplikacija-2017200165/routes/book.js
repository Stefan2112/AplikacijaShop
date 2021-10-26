const express = require("express");
const router = express.Router();
const bookListController = require("../controllers/bookListController");


router.post("/getAllClassify", bookListController.getAllClassify);

router.post("/getRandClassify", bookListController.getRandClassify);

router.post("/getHotGood", bookListController.getHotGood);

router.post("/getSaleGood", bookListController.getSaleGood);

router.post("/getDiscoverGood", bookListController.getDiscoverGood);

router.post("/getBookInfoById", bookListController.getBookInfoById);

router.post("/searchBook", bookListController.searchBook);

module.exports = router;

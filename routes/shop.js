const express = require("express");
const router = express.Router();
const shopController = require("../controllers/shopController");


router.post("/getShopInfo", shopController.getShopInfo);

module.exports = router;

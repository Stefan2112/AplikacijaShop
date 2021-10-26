const express = require("express");
const router = express.Router();
const cartListController = require("../controllers/cartListController");


router.post("/getUserCartList", cartListController.getUserCartList);

router.post("/addCart", cartListController.addCart);

router.post("/deleteCart", cartListController.deleteCart);

router.post("/getCartById", cartListController.getCartById);

router.post("/updateCartCount", cartListController.updateCartCount);

module.exports = router;

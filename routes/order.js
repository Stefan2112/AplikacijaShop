const express = require("express");
const router = express.Router();
const shopOrderController = require("../controllers/shopOrderController");


router.post("/createdOrder", shopOrderController.createdOrder);

router.post("/setOrderPayment", shopOrderController.setOrderPayment);

router.post("/getOrderList", shopOrderController.getOrderList);

router.post("/submitRefundOrder", shopOrderController.submitRefundOrder);

router.post("/submitOrderComplete", shopOrderController.submitOrderComplete);

router.post("/getOrderDetailById", shopOrderController.getOrderDetailById);

module.exports = router;

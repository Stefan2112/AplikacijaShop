const express = require("express");
const router = express.Router();
const indexController = require("../controllers/indexController");


router.post("/getPublicKey", indexController.getPublicKey);

router.post("/getProvince", indexController.getProvince);

router.post("/getCityByProvince", indexController.getCityByProvince);

router.post("/getCountryByCity", indexController.getCountryByCity);

router.post("/getDeliveryInfoById", indexController.getDeliveryInfoById);

module.exports = router;

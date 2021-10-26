const express = require("express");
const router = express.Router();
const addressController = require("../controllers/addressController");


router.post("/getDefaultAddress", addressController.getDefaultAddress);

router.post("/getAddressList", addressController.getAddressList);

router.post("/getAddressById", addressController.getAddressById);

router.post("/addAddress", addressController.addAddress);

router.post("/updateAddress", addressController.updateAddress);

router.post("/deleteAddress", addressController.deleteAddress);

module.exports = router;

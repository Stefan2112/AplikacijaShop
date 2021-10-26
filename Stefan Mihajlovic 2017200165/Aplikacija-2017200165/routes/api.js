const express = require("express");
const router = express.Router();
const apiController = require("../controllers/apiController");


router.post("/getOrder", apiController.getOrder);

module.exports = router;
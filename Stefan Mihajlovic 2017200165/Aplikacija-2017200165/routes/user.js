const express = require("express");
const router = express.Router();
const shopUserController = require("../controllers/shopUserController");


router.post("/login", shopUserController.login);

router.post("/register", shopUserController.register);

router.post("/logout", shopUserController.logout);

router.post("/updateNickname", shopUserController.updateNickname);

router.post("/updatePassword", shopUserController.updatePassword);

router.post("/updateSex", shopUserController.updateSex);

router.post("/updateAvatar", shopUserController.updateAvatar);

router.post("/getUserInfo", shopUserController.getUserInfo);

router.post("/hasPayPwd", shopUserController.hasPayPwd);

router.post("/setPayPwd", shopUserController.setPayPwd);

router.post("/validPayPwd", shopUserController.validPayPwd);

module.exports = router;

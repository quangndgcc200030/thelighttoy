const express = require("express")
const router = express.Router()
const profileController = require('../app/controllers/ProfileController')

router.put('/changepassword/store', profileController.changepasswordauth)
router.put('/update/store', profileController.updateauth)
router.get('/', profileController.index)

module.exports = router
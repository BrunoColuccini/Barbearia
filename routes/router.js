const express = require('express');
const router = express.Router();
const controller = require('../controllers/controller');


router.get('/', controller.home);
router.get('/servicos/:id', controller.detalhes);
router.get('/sobre', controller.sobre);


module.exports = router;
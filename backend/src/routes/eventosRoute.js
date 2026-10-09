const express = require("express");
const router = express.Router();
const eventosController = require("../controllers/eventosController");

router.get("/eventos", eventosController.consultarEventos);

module.exports = router;
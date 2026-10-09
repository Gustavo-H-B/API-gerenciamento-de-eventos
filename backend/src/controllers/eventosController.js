const eventosModel = require("../models/eventosModel");

const consultarEventos = async (req, res) => {
    try {
        const eventos = await eventosModel.consultarEventos();
        return res.status(200).json(eventos);

    } catch (erro) {
        console.error(erro);
        res.status(400).json({
            mensagem: "Erro interno no servidor;"
        });
    };
};

module.exports = {
    consultarEventos
};
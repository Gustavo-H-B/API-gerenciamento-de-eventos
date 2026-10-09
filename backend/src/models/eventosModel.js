const db = require("../config/database");

const consultarEventos = async () => {
    const [eventos] = await db.query(
        "SELECT * FROM eventos;",
    );

    return eventos;
};

module.exports = {
    consultarEventos,
};
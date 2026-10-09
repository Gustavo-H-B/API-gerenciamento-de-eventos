const express = require("express");
const app = express();

// const participantesRoute = require("./routes/participantesRoute");
// const locaisRoute = require("./routes/locaisRoute");
// const inscricoesRoute = require("./routes/inscricoesRoute");
const eventosRoute = require("./routes/eventosRoute");

app.use(express.json());
// app.use(participantesRoute);
// app.use(locaisRoute);
// app.use(inscricoesRoute);
app.use(eventosRoute);

module.exports = app;
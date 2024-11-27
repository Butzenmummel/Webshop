const config = require('dotenv').config();

const MARIADB_PW = process.env.MARIADB_PW;
const PORT = process.env.PORT;
const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.setHeader('content-type', 'text/plain', 'charset=utf-8');
  res.send(`Geheim: ${MARIADB_PW}`);
});

app.listen(PORT, () => {
  console.log(`Example app listening on port ${PORT}`);
});

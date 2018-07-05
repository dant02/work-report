'use strict';

const express = require('express');
const app = express();

app.get('/', (req, res) => {
    res.sendFile('/pages/index.html', { root: __dirname });
});

app.use(function (req, res) {
    res.sendStatus(404);
});

app.listen(3000, () => console.log('Example app listening on port 3000!'));
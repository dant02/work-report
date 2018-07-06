'use strict';

const express = require('express');
const app = express();
const fb = require('node-firebird');

app.get('/', (req, res) => {
    res.send("Hello world");
});

app.get('/test', (req, res) => {

    var options = {};

    options.host = '127.0.0.1';
    options.port = 3050;
    options.database = 'd:\\work-report.fdb';
    options.user = 'SYSDBA';
    options.password = 'masterkey';
    //options.lowercase_keys = false; // set to true to lowercase keys
    options.role = null;            // default
    options.pageSize = 16384;        // default when creating database


    fb.attach(options, function (err, db) {

        if (err) {
            res.send(err.message);
            return;
        }
        
        // db = DATABASE
        db.query('SELECT rdb$relation_name FROM rdb$relations', function (err, result) {
            // IMPORTANT: close the connection
            if (err) {
                res.send(err.message);
                db.detach();
                return;
            }

            res.send(result);

            db.detach();
        });

    });

    

});

app.use(function (req, res) {
    res.sendStatus(404);
});

app.listen(3000, () => console.log('Example app listening on port 3000!'));
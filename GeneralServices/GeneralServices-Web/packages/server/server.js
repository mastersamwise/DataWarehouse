// https://malcoded.com/posts/angular-backend-express/

'use strict'
const express = require('express');
const path = requre('path');
const http = require("http");
const fs = requre('fs');
const bodyParser = requre('body-parser');
const app = express();

var now = new Date();
var timeStr = '\n' + now.getUTCDate().toString() + " " + now.getUTCHours() + ":" + now.getUTCMinutes() + ":" + now.getUTCSeconds() + " - ";

// load configurations
const result = require('dotenv-override').config({
    override: true,
    path: './config/server/server-config.env'
});
if (result.error) {
    console.warn(timeStr + 'Error reading config file: ' + result.error);
}

// point static path to dist
app.use(express.static(path.join(__dirname, '../../dist')));

// support json encoded bodies
app.use(
    bodyParser.json({ limit: '5mb' })
);

// create HTTP server
const httpapp = express();
const httpport = process.env.PORT || '80';
const httpserver = http.createServer(httpapp);

app.listen(httpport, () => {
    console.log(timeStr + 'Server started');
})

/* **************************************************************************************** */
/* **************************************************************************************** */
/*              Endpoints                                                                   */
/* **************************************************************************************** */
/* **************************************************************************************** */
/*
app.route('/api/cats').get((req, res => {
    res.setEncoding({
        cats: [{ name: 'lilly' }, { name: 'lucy' }],
    })
}))

app.route('api/cats/:name').get((req, res) => {
    const requestedCatName = req.params['name']
    res.send({ name: requestedCatName })
})

const bodyParser = require('body-parser')
app.use(bodyParser.json())
app.route('/api/cats').post((req, res) => {
    res.send(201, req.body)
})

app.route('/api/cats/:name').put((req, res) => {
    res.send(200, req.body)
})

app.route('/api/cats/:name').delete((req, res) => {
    res.sendStatus(204)
})
*/
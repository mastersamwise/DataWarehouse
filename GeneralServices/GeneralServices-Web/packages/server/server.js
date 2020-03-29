// https://malcoded.com/posts/angular-backend-express/

const express = require('express')
const http = require("http")
const app = express()

var now = new Date();
var timeStr = now.getUTCDate() + " " + now.getUTCHours() + ":" + now.getUTCMinutes() + ":" + now.getUTCSeconds() + " - ";

app.listen(8000, () => {
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
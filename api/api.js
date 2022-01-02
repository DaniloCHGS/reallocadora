const express = require('express')
const api = express.Router()

api.get('/teste', (req, res)=>{
    res.send('Teste').statusCode = 200
})

module.exports = api
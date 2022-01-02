const express = require('express')
const login = express.Router()
const passport = require('passport')

const view = '../views/'

login.get('/', (req, res)=>{
    res.render(`${view}login`)
})

//Configurar success e failure

//Login por autenticação
login.post('/autenticacao', (req, res, next)=>{
    passport.authenticate('local', {
        successRedirect: '/painel',
        failureRedirect: '/login',
        failureFlash: true
    })(req, res, next)
})

//Lofout
login.get('/sair', (req, res)=>{
    req.logout()
    res.redirect('/login')
})

module.exports = login
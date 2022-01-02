const express = require('express')
const cadastro = express.Router()
const bcrypt = require('bcryptjs')

const usuarios = require('../models/usuarios')
const view = '../views/'
let log = []

cadastro.post('/cadastro', (req, res)=>{
    let erro = []
    let {nome, email, senha} = req.body

    if(!nome) erroVal('Nome não preenchido', erro)
    if(nome.length < 3) erroVal('Nome muito pequeno', erro)
    if(!email) erroVal('Email não preenchido', erro)
    if(!senha) erroVal('Senha não preenchida', erro)
    if(senha.length <= 6) erroVal('Senha muito curta', erro)
    if(senha == '123456') erroVal('Senha inválida', erro)

    if(erro.length > 0){
        res.render(`${view}login`, {erro})
    } else {
        usuarios.findOne({where:{email}}).then( usuario =>{
            if(usuario){
                erroVal('Email já cadastrado. Utilize outro', erro)
                res.render(`${view}login`, {erro})
            } else {
                bcrypt.genSalt(10, (erro, salt)=>{
                    bcrypt.hash(senha, salt, (erro, hash)=>{
                        if(erro){
                            erroLog(`Erro ao hashear senha/ Erro ${erro}`)
                            res.redirect('/login')
                        }
                        senha = hash
                        usuarios.create({nome, email, senha}).then(()=>{
                            req.flash('sucesso', 'Usuário criado com sucesso')
                            res.redirect('/login')
                        }).catch( erro => {
                            erroLog(`Erro ao cadastrar usuário/ ${{nomme, email, senha}}/ Erro ${erro}`)
                        })
                    })
                })
            }
        }).catch( erro => {
            erroLog(`Erro ao buscar um usuário/ Busca: ${email}/ Erro ${erro}`)
        })
    }
})

function erroVal(msg, vet){vet.push({texto: msg})}

function erroLog(msg){
    log.push({erro: msg})
    log.forEach(lg=>{console.log(lg)})
}
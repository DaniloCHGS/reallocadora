const express = require('express')
const usuarioController = express.Router()
const bcrypt = require('bcryptjs')
const usuarios = require('../models/usuarios')
const {authenticated} = require('../helpers/helpers')
const {authRouter} = require('../helpers/helpers')
const {isNotId} = require('../helpers/helpers')
const getUser = res => {return res.locals.user.dataValues}

const view = '../views/'
let log = []

usuarioController.post('/painel/usuario/cadastro', (req, res)=>{
    authRouter(req, res, 'usuarios', ()=>{})
    const errosFlash = (str) =>{
        erros = (!erros) ? erros = erros + str : erros = erros + ` / ${str}`
    }
    let erros = ''
    let erro = []
    let {nome, email, senha, acesso} = req.body


    if(!nome) {
        errosFlash('Nome não cadastrado')
        erro.push({er: 'Nome não cadastrado'})
    }
    if(nome.length < 3){
        errosFlash('Nome curto')
        erro.push({er: 'Nome curto'})
    }
    if(!email) {
        errosFlash('Email não cadastrado')
        erro.push({er: 'Email não cadastrado'})
    }
    if(!senha) {
        errosFlash('Senha não cadastrada')
        erro.push({er: 'Senha não cadastrada'})
    }
    if(senha.length < 7) {
        errosFlash('Senha curta')
        erro.push({er: 'Senha curta'})
    }
    if(senha == '123456') {
        errosFlash('Senha inválida')
        erro.push({er: 'Senha inválida'})
    }
    if(!acesso){
        errosFlash('Acesso não cadastrado')
        erro.push({er: 'Acesso não cadastrado'})
    }

    if(erro.length > 0){
        req.flash('erro', 'Erro ao cadastrar usuário. Favor, reenviar o formulário de forma correta')
        req.flash('erros', erros)
        res.redirect('/painel/usuarios')
    } else {
        usuarios.findOne({where:{email}}).then( usuario =>{
            if(usuario){
                errosFlash('Email já cadastrado, tente outro')
                req.flash('erro', 'Erro ao cadastrar usuário. Favor, reenviar o formulário de forma correta')
                req.flash('erros', erros)
                res.redirect('/painel/usuarios')
            } else {
                bcrypt.genSalt(10, (erro, salt)=>{
                    bcrypt.hash(senha, salt, (erro, hash)=>{
                        if(erro){
                            erroLog(`Erro ao hashear senha/ Erro ${erro}`)
                            res.redirect('/login')
                        }
                        senha = hash
                        usuarios.create({nome, email, senha, acesso}).then(()=>{
                            req.flash('sucesso', 'Usuário criado com sucesso!')
                            res.redirect('/painel/usuarios')
                        }).catch( erro => {
                            erroLog(`Erro ao cadastrar usuário/ ${{nome, email, senha}}/ Erro ${erro}`)
                        })
                    })
                })
            }
        }).catch( erro => {
            erroLog(`Erro ao buscar um usuário/ Busca: ${email}/ Erro ${erro}`)
        })
    }
})

usuarioController.get('/painel/usuario/:id', authenticated, (req, res)=>{
    authRouter(req, res, 'usuarios', ()=>{})
    let {id} = req.params
    isNotId(res, id, '/painel/usuarios')

    usuarios.findOne({where:{id}}).then(response=>{
        res.render(`${view}usuario`, {usuarioLogado: getUser(res), usuarioModel: response})
    }).catch(erro=>{console.log(erro)})
})

usuarioController.get('/painel/usuario/excluir/:id', authenticated, (req, res)=>{
    authRouter(req, res, 'usuarios', ()=>{})
    let {id} = req.params
    isNotId(res, id, '/painel/usuarios')

    usuarios.destroy({where: {id}}).then(()=>{
        req.flash('sucesso', 'Usuário excluido com sucesso!')
        res.redirect('/painel/usuarios')
    }).catch(erro=>{console.log(erro)})
})

usuarioController.post('/painel/usuario/editar/', authenticated, (req, res)=>{
    authRouter(req, res, 'usuarios', ()=>{})
    let {id, nome, email, senha, acesso} = req.body
    bcrypt.genSalt(10, (erro, salt)=>{
        bcrypt.hash(senha, salt, (erro, hash)=>{
            if(erro){
                erroLog(`Erro ao hashear senha/ Erro ${erro}`)
                res.redirect('/login')
            }
            senha = hash
            usuarios.update({nome, email, senha, acesso}, {where: {id}}).then(()=>{
                req.flash('sucesso', 'Usuário editado com sucesso!')
                res.redirect('/painel/usuarios')
            }).catch(erro=>{console.log(erro)})
        })
    })
    
})

function erroLog(msg){
    log.push({erro: msg})
    log.forEach(lg=>{console.log(lg)})
}

module.exports = usuarioController
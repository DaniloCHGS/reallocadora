const express = require('express')
const fornecedoresController = express.Router()
const {authenticated} = require('../helpers/helpers')
const {isNotId} = require('../helpers/helpers')
const {authRouter} = require('../helpers/helpers')
const cidades = require('../models/cidades')
const fornecedores = require('../models/fornecedores')
const contatosFornecedor = require('../models/contatosFornecedor')

const view = '../views/'
const getUser = res => {return res.locals.user.dataValues}

fornecedoresController.get('/painel/fornecedor/cadastro', authenticated, (req, res)=>{
    authRouter(req, res, 'fornecedores', ()=>{})
    cidades.findAll().then(response=>{
        res.render(`${view}cadastro-fornecedor`, {usuarioLogado: getUser(res), cidades: response})
    }).catch(erro=>{console.log(erro)})
})

fornecedoresController.get('/painel/fornecedor/:id', authenticated, (req, res)=>{
    authRouter(req, res, 'fornecedores', ()=>{})
    let {id} = req.params
    isNotId(res, id, '/painel/fornecedor')

    fornecedores.findOne({where:{id}}).then(response=>{
        contatosFornecedor.findAll({where:{idForncedor: id}}).then(responseContatos=>{
            res.render(`${view}fornecedor`, {usuarioLogado: getUser(res), fornecedor: response, contatos: responseContatos})
        }).catch(erro=>{console.log(erro)})
    }).catch(erro=>{console.log(erro)})
})

fornecedoresController.get('/painel/fornecedor/editar/:id', authenticated, (req, res)=>{
    authRouter(req, res, 'fornecedores', ()=>{})
    let {id} = req.params
    isNotId(res, id, '/painel/forncedores')
    fornecedores.findOne({where:{id}}).then(response=>{
        cidades.findAll().then(responseCidades=>{
            res.render(`${view}editar-fornecedor`, {usuarioLogado: getUser(res), fornecedor: response, cidades: responseCidades})
        }).catch(erro=>{console.log(erro)})
    }).catch(erro=>{console.log(erro)})
})

fornecedoresController.post('/painel/fornecedor/editar', authenticated, (req, res)=>{
    authRouter(req, res, 'fornecedores', ()=>{})
    let erros = ''
    let erro = 0

    const errosFlash = (str) =>{
        erro++
        erros = (!erros) ? erros = erros + str : erros = erros + ` / ${str}`
    }
    
    const notValue = (value, txt) => {
        if(!value) errosFlash(txt)
    }

    let {empresa, cidade, celular, telefone, email, desc, id} = req.body

    notValue(empresa, 'Empresa não cadastrada')
    notValue(cidade, 'Cidade não cadastrada')
    // notValue(email, 'Email não cadastrado')

    if(!celular && !telefone) {
        errosFlash('Celular ou telefone não cadastrado(s)')
    }

    if(erro > 0) {
        req.flash('erro', 'Erro ao editar fornecedor. Favor, reenviar o formulário de forma correta')
        req.flash('erros', erros)
        res.redirect(`/painel/fornecedor/editar/${id}`)
    } else {
        fornecedores.update({empresa, cidade, celular, telefone, email, desc}, {where: {id}}).then(()=>{
            req.flash('sucesso', 'Fornecedor editado com sucesso!')
            res.redirect(`/painel/fornecedor/${id}`)
        }).catch(erro=>{console.log(erro)})
    }
})

fornecedoresController.get('/painel/fornecedor/excluir/:id', authenticated, (req, res)=>{
    authRouter(req, res, 'fornecedores', ()=>{})
    let {id} = req.params
    isNotId(res, id, '/painel/fornecedor')

    fornecedores.destroy({where: {id}}).then(()=>{
        req.flash('sucesso', 'Fornecedor excluido com sucesso!')
        res.redirect('/painel/fornecedores/')
    })
})

fornecedoresController.post('/painel/fornecedor/cadastro/contato', authenticated, (req, res)=>{
    authRouter(req, res, 'fornecedores', ()=>{})
    let erros = ''
    let erro = 0

    const errosFlash = (str) =>{
        erro++
        erros = (!erros) ? erros = erros + str : erros = erros + ` / ${str}`
    }
    
    const notValue = (value, txt) => {
        if(!value) errosFlash(txt)
    }

    let {nome, email, celular, telefone, idForncedor} = req.body

    notValue(nome, 'Nome do contato não preenchido')
    notValue(email, 'Email do contato não preenchido')
    
    if(!celular && !telefone) {
        errosFlash('Celular ou telefone não cadastrado(s)')
    }

    if(erro > 0){
        req.flash('erro', 'Erro ao cadastrar contato. Favor, reenviar o formulário de forma correta')
        req.flash('erros', erros)
        res.redirect(`/painel/fornecedor/${idForncedor}`)
    } else {
        contatosFornecedor.create({nome, email, celular, telefone, idForncedor}).then(response=>{
            req.flash('sucesso', 'Contato criado com sucesso!')
            res.redirect(`/painel/fornecedor/${idForncedor}`)
        }).catch(erro=>{console.log(erro)})
    }
})

fornecedoresController.post('/painel/fornecedor/editar/contato', authenticated, (req, res)=>{
    authRouter(req, res, 'fornecedores', ()=>{})
    let erros = ''
    let erro = 0

    const errosFlash = (str) =>{
        erro++
        erros = (!erros) ? erros = erros + str : erros = erros + ` / ${str}`
    }
    
    const notValue = (value, txt) => {
        if(!value) errosFlash(txt)
    }

    let {nome, email, celular, telefone, idForncedor, id} = req.body

    notValue(nome, 'Nome do contato não preenchido')
    notValue(email, 'Email do contato não preenchido')
    
    if(!celular && !telefone) {
        errosFlash('Celular ou telefone não cadastrado(s)')
    }

    if(erro > 0){
        req.flash('erro', 'Erro ao editar contato. Favor, reenviar o formulário de forma correta')
        req.flash('erros', erros)
        res.redirect(`/painel/fornecedor/${idForncedor}`)
    } else {
        contatosFornecedor.update({nome, email, celular, telefone}, {where: {id}}).then(()=>{
            req.flash('sucesso', 'Contato editado com sucesso!')
            res.redirect(`/painel/fornecedor/${idForncedor}`)
        }).catch(erro=>{console.log(erro)})
    }
})

fornecedoresController.get('/painel/fornecedor/excluir/contato/:id/:idForncedor', authenticated, (req, res)=>{
    authRouter(req, res, 'fornecedores', ()=>{})
    let {id, idForncedor} = req.params
    isNotId(res, id, '/painel/fornecedores')

    contatosFornecedor.destroy({where: {id}}).then(()=>{
        req.flash('sucesso', 'Contato excluido com sucesso!')
        res.redirect(`/painel/fornecedor/${idForncedor}`)
    }).catch(erro=>{console.log(erro)})
})

fornecedoresController.post('/painel/fornecedor/cadastro', authenticated, (req, res)=>{
    authRouter(req, res, 'fornecedores', ()=>{})
    let erros = ''
    let erro = 0

    const errosFlash = (str) =>{
        erro++
        erros = (!erros) ? erros = erros + str : erros = erros + ` / ${str}`
    }
    
    const notValue = (value, txt) => {
        if(!value) errosFlash(txt)
    }

    let {empresa, cidade, celular, telefone, email, desc} = req.body

    notValue(empresa, 'Empresa não cadastrada')
    notValue(cidade, 'Cidade não cadastrada')
    // notValue(email, 'Email não cadastrado')

    if(!celular && !telefone) {
        errosFlash('Celular ou telefone não cadastrado(s)')
    }

    if(erro > 0) {
        req.flash('erro', 'Erro ao cadastrar fornecedor. Favor, reenviar o formulário de forma correta')
        req.flash('erros', erros)
        res.redirect('/painel/fornecedor/cadastro')
    } else {
        fornecedores.findOne({where:{empresa}}).then(response=>{
            if(response){
                errosFlash('Fornecedor já cadastrado, tente outro.')
                req.flash('erro', 'Erro ao cadastrar fornecedor. Favor, reenviar o formulário de forma correta')
                req.flash('erros', erros)
                res.redirect('/painel/fornecedor/cadastro')
            } else {
                fornecedores.create({empresa, cidade, celular, telefone, email, desc}).then(response=>{
                    req.flash('sucesso', 'Fornecedor criado com sucesso!')
                    res.redirect('/painel/fornecedores')
                }).catch(erro=>{console.log(erro)})
            }
        }).catch(erro=>{console.log(erro)})
    }
})

fornecedoresController.post('/painel/fornecedor/cadastro/cidade', authenticated, (req, res)=>{
    authRouter(req, res, 'fornecedores', ()=>{})
    let erros = ''
    let erro = 0

    const errosFlash = (str) =>{
        erro++
        erros = (!erros) ? erros = erros + str : erros = erros + ` / ${str}`
    }
    
    const notValue = (value, txt) => {
        if(!value) errosFlash(txt)
    }

    let {nome} = req.body

    notValue(nome, 'Nome da cidade não cadastrado')

    if(erro > 0) {
        req.flash('erro', 'Erro ao cadastrar cidade. Favor, reenviar o formulário de forma correta')
        req.flash('erros', erros)
        res.redirect(`/painel/fornecedor/cadastro`)
    } else {
        cidades.findOne({where:{nome}}).then(response=>{
            if(response){
                errosFlash('Cidade já cadastrada')
                req.flash('erro', 'Erro ao cadastrar cidade. Favor, reenviar o formulário de forma correta')
                req.flash('erros', erros)
                res.redirect(`/painel/fornecedor/cadastro`)
            } else {
                cidades.create({nome}).then(response=>{
                    req.flash('sucesso', 'Cidade criada com sucesso!')
                    res.redirect('/painel/fornecedor/cadastro')
                }).catch(erro=>{console.log(erro)})
            }
        })
    }
    
})

module.exports = fornecedoresController
const express = require('express')
const mainController = express.Router()
const {authenticated} = require('../helpers/helpers')
const {authRouter} = require('../helpers/helpers')
const usuariosModel = require('../models/usuarios')
const veiculosModel = require('../models/veiculos')
const fornecedores = require('../models/fornecedores')
const contratos = require('../models/contratos')
const manutencao = require('../models/manutencao')
const contatosFornecedor = require('../models/contatosFornecedor')
const historico = require('../models/historico')
const itemEstoque = require('../models/itemEstoque')
const view = '../views/'

const getUser = res => {return res.locals.user.dataValues}

mainController.get('/erro/404', (req, res)=>{
    res.render(`${view}404`)
})

mainController.get('/', (req, res)=>{
    res.redirect('/painel')
})

mainController.get('/login', (req, res)=>{
    res.render(`${view}login`)
})

mainController.get('/painel', authenticated, (req, res)=>{
    res.render(`${view}index`, {usuarioLogado: getUser(res)})
})

mainController.get('/painel/veiculos', authenticated, (req, res)=>{
    authRouter(req, res, 'veículos', ()=>{
        veiculosModel.findAll().then(veiculos => {
            res.render(`${view}veiculos`, {usuarioLogado: getUser(res), veiculos})
        })
    })
})

mainController.get('/painel/contratos', authenticated, (req, res)=>{
    authRouter(req, res, 'contratos', ()=>{
        contratos.findAll().then(response=>{
            res.render(`${view}contratos`, {usuarioLogado: getUser(res), contratos: response})
        }).catch(erro=>{console.log(erro)})
    })
})

//api
mainController.get('/usuarios', authenticated, (req, res)=>{
    authRouter(req, res, 'usuarios', ()=>{
        usuariosModel.findAll().then(usuarios =>{
            res.status(200)
            res.send(usuarios)
        }).catch(erro=>{
            console.log(erro)
        })
    })
})

mainController.get('/painel/usuarios', authenticated, (req, res)=>{
    authRouter(req, res, 'usuarios', ()=>{
        usuariosModel.findAll().then(usuarios =>{
            res.render(`${view}usuarios`, {usuarioLogado: getUser(res), usuarios})
        }).catch(erro=>{
            console.log(erro)
        })
    })
})

mainController.get('/painel/fornecedores', authenticated, (req, res)=>{
    authRouter(req, res, 'fornecedores', ()=>{
        fornecedores.findAll().then(response=>{
            contatosFornecedor.findAll().then(responseContatos=>{
                res.render(`${view}fornecedores`, {usuarioLogado: getUser(res), fornecedores: response, contatos: responseContatos})
            }).catch(erro=>{console.log(erro)})
        }).catch(erro=>{console.log(erro)})
    })
})

mainController.get('/painel/manutencao', authenticated, (req, res)=>{
    authRouter(req, res, 'fornecedores', ()=>{
        veiculosModel.findAll().then(response=>{
            itemEstoque.findAll().then(responseItem=>{
                manutencao.findAll().then(responseManutencao=>{
                    res.render(`${view}manutencao`, {usuarioLogado: getUser(res), veiculos: response, manutencoes: responseManutencao, itens: responseItem})
                }).catch(erro=>{console.log(erro)})
            }).catch(erro=>{console.log(erro)})
        }).catch(erro=>{console.log(erro)})
    })
})

mainController.get('/painel/relatorio', authenticated, (req, res)=>{
    authRouter(req, res, 'relatorio', ()=>{
        res.render(`${view}relatorio`, {usuarioLogado: getUser(res)})
    })
})

mainController.get('/painel/historico', authenticated, (req, res)=>{
    authRouter(req, res, 'historico', ()=>{
        historico.findAll().then(response=>{
            res.render(`${view}historico`, {usuarioLogado: getUser(res), historicos: response})
        }).catch(erro=>{console.log(erro)})
    })
})

mainController.get('/painel/estoque', authenticated, (req, res)=>{
    itemEstoque.findAll({order:['codigo', 'desc']}).then(response=>{
        res.render(`${view}estoque`, {usuarioLogado: getUser(res), itens: response, teste: {t:"teste"}})
    }).catch(erro=>{console.log(erro)})
})

module.exports = mainController
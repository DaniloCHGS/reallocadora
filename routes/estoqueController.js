const express = require('express')
const estoqueController = express.Router()
const {authenticated} = require('../helpers/helpers')
const {isNotId} = require('../helpers/helpers')
const itemEstoque = require('../models/itemEstoque')
const fornecedores = require('../models/fornecedores')

const view = '../views/'
const getUser = res => {return res.locals.user.dataValues}

estoqueController.get('/painel/estoque/cadastro', authenticated, (req, res)=>{
    fornecedores.findAll().then(response=>{
        res.render(`${view}cadastro-item`, {usuarioLogado: getUser(res), fornecedores: response})
    }).catch(erro=>{console.log(erro)})
})

estoqueController.get('/painel/estoque/editar/:id', authenticated, (req, res)=>{
    
    let {id} = req.params
    isNotId(res, id, '/painel/estoque')

    itemEstoque.findOne({where:{id}}).then(item=>{
        fornecedores.findAll().then(response=>{
            res.render(`${view}editar-item`, {usuarioLogado: getUser(res), fornecedores: response, item})
        }).catch(erro=>{console.log(erro)})
    }).catch(erro=>{console.log(erro)})
})

estoqueController.post('/painel/estoque/lancamento', authenticated, (req, res)=>{
    let erros = ''
    let erro = 0

    const errosFlash = (str) =>{
        erro++
        erros = (!erros) ? erros = erros + str : erros = erros + ` / ${str}`
    }
    
    const notValue = (value, txt) => {
        if(!value) errosFlash(txt)
    }

    let {idItem, qtdItem, ultimaCompra, valorUltimaCompra} = req.body

    let qtdSomar = parseInt(qtdItem)

    notValue(qtdItem, 'Quantidade do item não preenchido')

    if(erro > 0) {
        req.flash('erro', 'Erro ao lançar item no estoque. Favor, reenviar o formulário de forma correta')
        req.flash('erros', erros)
        res.redirect('/painel/estoque')
    } else {
        itemEstoque.findOne({where:{id: idItem}}).then(response=>{
            let result = (response.qtdItem) ? parseInt(response.qtdItem) : 0
            result = result + qtdSomar
            result = result.toString()

            itemEstoque.update({idItem, qtdItem: result, ultimaCompra, valorUltimaCompra}, {where:{id: idItem}}).then(()=>{
                req.flash('sucesso', 'Item lançado no estoque com sucesso!')
                res.redirect('/painel/estoque')
            }).catch(erro=>{console.log(erro)})
        }).catch(erro=>{console.log(erro)})
    }
})

estoqueController.post('/painel/estoque/cadastro/item', authenticated, (req, res)=>{
    let erros = ''
    let erro = 0

    const errosFlash = (str) =>{
        erro++
        erros = (!erros) ? erros = erros + str : erros = erros + ` / ${str}`
    }
    
    const notValue = (value, txt) => {
        if(!value) errosFlash(txt)
    }

    let {codigo, nomeItem, fabricante, fornecedor, valorItem, ultimaCompra, desc} = req.body
    

    notValue(codigo, 'Código não preenchido')
    notValue(nomeItem, 'Nome do item não preenchido')
    notValue(fabricante, 'Fabricante não preenchido')
    notValue(fornecedor, 'Fornecedor não preenchido')
    notValue(valorItem, 'Valor do item não preenchido')
    notValue(ultimaCompra, 'última compra não preenchida')

    if(erro > 0) {
        req.flash('erro', 'Erro ao editar veículo. Favor, reenviar o formulário de forma correta')
        req.flash('erros', erros)
        res.redirect('/painel/estoque/cadastro')
    } else {
        itemEstoque.create({codigo, nomeItem, fabricante, fornecedor, valorItem, ultimaCompra, desc, qtdItem: 0}).then(()=>{
            req.flash('sucesso', 'Item cadastrado com sucesso!')
            res.redirect('/painel/estoque')
        }).catch(erro=>{console.log(erro)})
    }
})

estoqueController.get('/painel/estoque/item/:id', authenticated, (req, res)=>{
    let {id} = req.params
    isNotId(res, id, '/painel/estoque')

    itemEstoque.findOne({where:{id}}).then(response=>{
        res.render(`${view}item`, {usuarioLogado: getUser(res), item: response})
    }).catch(erro=>{console.log(erro)})
})

estoqueController.post('/painel/estoque/editar/item', authenticated, (req, res)=>{
    let erros = ''
    let erro = 0

    const errosFlash = (str) =>{
        erro++
        erros = (!erros) ? erros = erros + str : erros = erros + ` / ${str}`
    }
    
    const notValue = (value, txt) => {
        if(!value) errosFlash(txt)
    }

    let {id, codigo, nomeItem, fabricante, fornecedor, valorItem, ultimaCompra} = req.body

    notValue(codigo, 'Código não preenchido')
    notValue(nomeItem, 'Nome do item não preenchido')
    notValue(fabricante, 'Fabicante não preenchido')
    notValue(fornecedor, 'Fornecedor não preenchido')
    notValue(valorItem, 'Valor do item não preenchido')
    notValue(ultimaCompra, 'Última compra não preenchida')

    if(erro > 0) {
        req.flash('erro', 'Erro ao editar item. Favor, reenviar o formulário de forma correta')
        req.flash('erros', erros)
        res.redirect(`/painel/veiculo/editar/${id}`)
    } else {
        itemEstoque.update({id, codigo, nomeItem, fabricante, fornecedor, valorItem, ultimaCompra}, {where: {id}}).then(()=>{
            req.flash('sucesso', 'Item editado com sucesso!')
            res.redirect(`/painel/estoque/item/${id}`)
        }).catch(erro=>{console.log(erro)})
    }
})

estoqueController.get('/painel/estoque/item/excluir/:id', authenticated, (req, res)=>{
    let {id} = req.params
    isNotId(res, id, '/painel/estoque')

    itemEstoque.destroy({where: {id}}).then(()=>{
        req.flash('sucesso', 'Item excluido com sucesso!')
        res.redirect('/painel/estoque')
    }).catch(erro=>{console.log(erro)})
})

module.exports = estoqueController
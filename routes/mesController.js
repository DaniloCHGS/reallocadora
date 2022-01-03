const express = require('express')
const mesController = express.Router()
const {authenticated} = require('../helpers/helpers')
const {isNotId} = require('../helpers/helpers')
const contratos = require('../models/contratos')
const mesContratos = require('../models/mes_contratos')
const contratoVeiculos = require('../models/contrato_veiculos')
const manutencao = require('../models/manutencao')

const view = '../views/'
const getUser = res => {return res.locals.user.dataValues}

mesController.post('/painel/contrato/mes', authenticated, (req, res)=>{
    let {id_contrato} = req.body
    mesContratos.findAll({where:{id_contrato}}).then(response=>{
        res.send(response)
    }).catch(erro=>{console.log(erro)})
})

mesController.post('/painel/contrato/mes/cadastro', authenticated, (req, res)=>{
    let {id_contrato, inicioContrato} = req.body
    mesContratos.create({id_contrato, mes: inicioContrato}).then(response=>{
        res.send(response)
    }).catch(erro=>{console.log(erro)})
})

mesController.post('/painel/contrato/mes/novaparcela', authenticated, (req, res)=>{
    let {id_contrato, novaparcela} = req.body
    mesContratos.create({id_contrato, mes: novaparcela}).then(novaparcelaRes =>{
        res.redirect(`/painel/contrato/${id_contrato}`)
    }).catch(erro=>{console.log(erro)})
})

mesController.get('/painel/contrato/mes/:id', authenticated, (req, res)=>{
    let {id} = req.params
    isNotId(res, id, '/painel/contratos')
    
    mesContratos.findOne({where: {id}}).then(response=>{
        contratos.findOne({where:{id:response.id_contrato}}).then(contrato=>{
            contratoVeiculos.findAll({where: {idContrato: response.id_contrato}}).then(veiculos=>{
                manutencao.findAll().then(manutencoes=>{
                    res.render(`${view}mes`, {
                        usuarioLogado: getUser(res),
                        mes: response,
                        contrato,
                        veiculos,
                        manutencoes
                    }).catch(erro=>{console.log(erro)})
                })
            }).catch(erro=>{console.log(erro)})
        }).catch(erro=>{console.log(erro)})
    }).catch(erro=>{console.log(erro)})
})

mesController.post('/painel/contrato/mes/pagamento', authenticated, (req, res)=>{

    let {data_pagamento, valor_pagamento, id} = req.body
    // res.send({data_pagamento, valor_pagamento, id})
    mesContratos.update({data_pagamento, valor_pagamento}, {where: {id}}).then(()=>{
        req.flash('sucesso', 'Pagamento adicionado com sucesso!')
        res.redirect(`/painel/contrato/mes/${id}`)
    }).catch(erro=>{console.log(erro)})
})

module.exports = mesController
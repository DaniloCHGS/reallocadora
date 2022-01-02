const express = require('express')
const apiController = express.Router()
const {authenticated} = require('../helpers/helpers')
const veiculo = require('../models/veiculos')

apiController.get('/api/veiculo/:placa', authenticated, (req, res)=>{
    let {placa} = req.params
    
    if(!placa){
        res.status(400)
        res.send({msg: 'Busca inválida'})
    } else {
        veiculo.findOne({where:{placa}}).then(response=>{
            if(!response){
                res.status(404)
                res.send({msg: 'Veículo não encontrado'})
            } else {
                res.status(200)
                res.send({veiculo: response})
            }
        }).catch(erro=>{console.log(erro)})
    }
})

module.exports = apiController
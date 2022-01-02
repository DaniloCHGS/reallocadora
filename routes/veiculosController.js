const express = require('express')
const veiculoController = express.Router()
const {authenticated} = require('../helpers/helpers')
const {isNotId} = require('../helpers/helpers')
const {historicoRegistro} = require('../helpers/helpers')
const veiculos = require('../models/veiculos')
const contratos = require('../models/contratos')
const manutencao = require('../models/manutencao')
const contratoVeiculos = require('../models/contrato_veiculos')
const historico = require('../models/historico')

const view = '../views/'
const getUser = res => {return res.locals.user.dataValues}

veiculoController.get('/painel/veiculo/cadastro', authenticated, (req, res)=>{
    res.render(`${view}cadastro-veiculo`, {usuarioLogado: getUser(res)})
})

veiculoController.get('/painel/veiculo/editar/:id', authenticated, (req, res)=>{
    
    let {id} = req.params
    isNotId(res, id, '/painel/veiculos')

    veiculos.findOne({where:{id}}).then(response=>{
        res.render(`${view}editar-veiculo`, {usuarioLogado: getUser(res), veiculo: response})
    }).catch(erro=>{console.log(erro)})
})

veiculoController.post('/painel/veiculo/editar', authenticated, (req, res)=>{
    
    let erros = ''
    let erro = 0

    const errosFlash = (str) =>{
        erro++
        erros = (!erros) ? erros = erros + str : erros = erros + ` / ${str}`
    }
    
    const notValue = (value, txt) => {
        if(!value) errosFlash(txt)
    }

    let {placa, renavan, marca, ano, modelo, tipo, nomeFornecedor, valorCompra, valorVenda, status, id} = req.body
    
    notValue(placa, 'Número da placa não preenchido')
    if(placa.length != 7) errosFlash('Dígitos da placa incompletos')

    notValue(renavan, 'Renavan não preenchido')

    notValue(marca, 'Marca não preenchida')

    notValue(ano, 'Ano não preenchido')

    notValue(modelo, 'Modelo não preenchido')

    notValue(tipo, 'Tipo não preenchido')

    notValue(nomeFornecedor, 'Nome do fornecedor não preenchido')

    notValue(valorCompra, 'Valor da compra não preenchida')

    notValue(valorVenda, 'Valor da venda não preenchida')

    notValue(status, 'Status não preenchido')

    if(erro > 0) {
        req.flash('erro', 'Erro ao editar veículo. Favor, reenviar o formulário de forma correta')
        req.flash('erros', erros)
        res.redirect(`/painel/veiculo/editar/${id}`)
    } else {
        veiculos.update({placa, renavan, marca, ano, modelo, tipo, nomeFornecedor, valorCompra, valorVenda, status}, {where: {id}}).then(()=>{
            
            req.flash('sucesso', 'Veículo editado com sucesso!')
            res.redirect(`/painel/veiculo/${id}`)
        }).catch(erro=>{console.log(erro)})
    }
})

veiculoController.get('/painel/veiculo/:id', authenticated, (req, res)=>{
    
    let {id} = req.params
    isNotId(res, id, '/painel/veiculos')

    veiculos.findOne({where:{id}}).then(response=>{
        contratoVeiculos.findAll({where: {idVeiculo: id}}).then(resp=>{
            let ids = []
            resp.forEach(r=>{ ids.push(r.idContrato) })
            contratos.findAll().then(responseContratos=>{
                manutencao.findAll().then(responseManutencao=>{
                    res.render(`${view}veiculo`, {
                        usuarioLogado: getUser(res),
                        veiculo: response,
                        contratos: responseContratos,
                        ids,
                        manutencoes: responseManutencao
                    })
                }).catch(erro=>{console.log(erro)})
            }).catch(erro=>{console.log(erro)})
        }).catch(erro=>{console.log(erro)})
        
    }).catch(erro=>{console.log(erro)})
})

veiculoController.get('/painel/veiculo/excluir/:id', authenticated, (req, res)=>{
    
    let {id} = req.params
    isNotId(res, id, '/painel/veiculos')

    veiculos.findOne({where:{id}}).then(resp=>{
        let {placa} = resp
        veiculos.destroy({where: {id}}).then(()=>{
            contratoVeiculos.findOne({where:{idVeiculo:id}}).then(response=>{
                if(response) {
                    contratoVeiculos.destroy({where:{idVeiculo:id}}).then(()=>{
                        manutencao.findOne({where:{placa}}).then(respPlaca=>{
                            if(respPlaca){
                                manutencao.destroy({where:{placa}}).then(()=>{
                                    req.flash('sucesso', 'Veículo excluido com sucesso!')
                                    res.redirect('/painel/veiculos')
                                })
                            } else {
                                req.flash('sucesso', 'Veículo excluido com sucesso!')
                                res.redirect('/painel/veiculos')
                            }
                        }).catch(erro => { console.log(erro) })
                    }).catch(erro => { console.log(erro) })
                } else {
                    req.flash('sucesso', 'Veículo excluido com sucesso!')
                    res.redirect('/painel/veiculos')
                }
            }).catch(erro=>{ console.log(erro) })
            
        }).catch(erro=>{console.log(erro)})
    }).catch(erro => { console.log(erro) })
    
})

veiculoController.post('/painel/veiculo/cadastro', authenticated, (req, res)=>{
    
    let erros = ''
    let erro = 0

    const errosFlash = (str) =>{
        erro++
        erros = (!erros) ? erros = erros + str : erros = erros + ` / ${str}`
    }
    
    const notValue = (value, txt) => {
        if(!value) errosFlash(txt)
    }

    let {placa, renavan, marca, ano, modelo, tipo, nomeFornecedor, valorCompra, valorVenda, status} = req.body
    
    notValue(placa, 'Número da placa não preenchido')
    if(placa.length != 7) errosFlash('Dígitos da placa incompletos')

    notValue(renavan, 'Renavan não preenchido')

    notValue(marca, 'Marca não preenchida')

    notValue(ano, 'Ano não preenchido')

    notValue(modelo, 'Modelo não preenchido')

    notValue(tipo, 'Tipo não preenchido')

    notValue(nomeFornecedor, 'Nome do fornecedor não preenchido')

    notValue(valorCompra, 'Valor da compra não preenchida')

    notValue(valorVenda, 'Valor da venda não preenchida')

    notValue(status, 'Status não preenchido')

    if(erro > 0) {
        req.flash('erro', 'Erro ao cadastrar veículo. Favor, reenviar o formulário de forma correta')
        req.flash('erros', erros)
        res.redirect('/painel/veiculo/cadastro')
    } else {
        veiculos.findOne({where:{placa}}).then(response=>{
            if(response){
                errosFlash('Veículo já cadastrado, tente outro')
                req.flash('erro', 'Erro ao cadastrar veículo. Favor, reenviar o formulário de forma correta')
                req.flash('erros', erros)
                res.redirect('/painel/veiculo/cadastro')
            } else {
                veiculos.create({placa, renavan, marca, ano, modelo, tipo, nomeFornecedor, valorCompra, valorVenda, status}).then(response=>{
                    let usuario = getUser(res)
                    usuario = usuario.nome
                    // let data = new Data().toLocaleString()
                    historico.create({nome: usuario, acao: 'Criou um veículo', msg: `Veículo com placa ${placa}`, data: '11111'}).then(()=>{
                        req.flash('sucesso', 'Veículo criado com sucesso!')
                        res.redirect('/painel/veiculos')
                    }).catch(erro=>{console.log(erro)})
                }).catch(erro=>{console.log(erro)})
            }
        }).catch(erro=>{console.log(erro)})
    }
})

module.exports = veiculoController
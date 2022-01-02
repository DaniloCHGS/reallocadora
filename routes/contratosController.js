const express = require('express')
const contratosController = express.Router()
const {authenticated} = require('../helpers/helpers')
const {isNotId} = require('../helpers/helpers')
const veiculos = require('../models/veiculos')
const contratos = require('../models/contratos')
const cidades = require('../models/cidades')
const contratoVeiculos = require('../models/contrato_veiculos')
const mesContratos = require('../models/mes_contratos')

const view = '../views/'
const getUser = res => {return res.locals.user.dataValues}

contratosController.get('/painel/contrato/cadastro', authenticated, (req, res)=>{
    veiculos.findAll().then(response=>{
        cidades.findAll().then(responseCidades=>{
            res.render(`${view}cadastro-contrato`, {usuarioLogado: getUser(res), veiculos: response, cidades: responseCidades})
        }).catch(erro=>{console.log(erro)})
    }).catch(erro=>{console.log(erro)})
})

contratosController.post('/painel/contrato/cadastro', authenticated, (req, res)=>{
    let erros = ''
        let erro = 0
    
        const errosFlash = (str) =>{
            erro++
            erros = (!erros) ? erros = erros + str : erros = erros + ` / ${str}`
        }
        
        const notValue = (value, txt) => {
            if(!value) errosFlash(txt)
        }
    
        let {numero, orgao, empenho, edital, processo, cidade, contratante, inicio, termino, status} = req.body
    
        notValue(numero, 'Número não preenchido')
        notValue(orgao, 'Orgão não preenchido')
        notValue(empenho, 'Empenho não preenchido')
        notValue(edital, 'Edital não preenchido')
        notValue(processo, 'Processo não preenchido')
        notValue(cidade, 'Cidade não preenchida')
        notValue(contratante, 'Contratante não preenchido')
        notValue(inicio, 'Inicio do Contrato não preenchido')
        notValue(termino, 'Termino do Contrato não preenchido')
        notValue(status, 'Status não preenchido')

        // let qtdMeses = termino[6]
        
        if(erro > 0) {
            req.flash('erro', 'Erro ao cadastrar contrato. Favor, reenviar o formulário de forma correta')
            req.flash('erros', erros)
            res.redirect('/painel/contrato/cadastro')
        } else {
            contratos.create({numero, orgao, empenho, edital, processo, cidade, contratante, inicio, termino, status}).then(()=>{
                contratos.findOne({where:{numero, orgao, empenho, edital, processo, cidade, contratante, inicio, termino, status}}).then(contrato=>{
                    console.log('%%%%%%%%%%%%%%%%%')
 
                    var primeiroRegistro = true
                    console.log(primeiroRegistro)
                    
                    let mesCriado = inicio
                    mesContratos.create({id_contrato:contrato.id, mes: inicio}).then(()=>{}).catch(erro=>{console.log(erro)})

                    for(let i = 1; i < contrato.termino; i++){
                        
                        var tratativa = mesCriado.split('-')
                        var mes = parseInt(tratativa[0])
                        var ano = parseInt(tratativa[1])
                        var mesAno = somaMesAno(mes, ano)
                        mesCriado = mesAno
                        mesContratos.create({id_contrato:contrato.id, mes: mesAno}).then(()=>{}).catch(erro=>{console.log(erro)})

                    }
                    req.flash('sucesso', 'Contrato criado com sucesso!')
                    res.redirect('/painel/contratos')
                }).catch(erro=>{console.log(erro)})
            }).catch(erro=>{console.log(erro)})
        }
})

function ajusteMes(mes){ return (mes.length == 1) ? `0${mes}` : mes }

function somaMesAno(mes, ano){
    var mesAno
    var soma = mes + 1
    if(soma == 13) {
        let somaAno = ano + 1
        mesAno = `${ajusteMes('1')}-${somaAno.toString()}`
    } else {
        mesAno = `${ajusteMes(soma.toString())}-${ano.toString()}`
    }

    return mesAno
}

// contratos.create({numero, orgao, empenho, edital, processo, cidade, contratante, inicio, termino, status}).then(()=>{
//     contratos.findOne({where:{numero, orgao, empenho, edital, processo, cidade, contratante, inicio, termino, status}}).then(contrato=>{
//         mesContratos.create({id_contrato:contrato.id, mes: inicio}).then(()=>{
//             req.flash('sucesso', 'Contrato criado com sucesso!')
//             res.redirect('/painel/contratos')
//         }).catch(erro=>{console.log(erro)})
//     }).catch(erro=>{console.log(erro)})
// }).catch(erro=>{console.log(erro)})

contratosController.get('/painel/contrato/:id', authenticated, (req, res)=>{
    let {id} = req.params
    isNotId(res, id, '/painel/contratos')

    contratos.findOne({where:{id}}).then(response=>{
        veiculos.findAll().then(responseVeiculos=>{
            contratoVeiculos.findAll({where: {idContrato: id}}).then(responseContratoVeiculos=>{
                mesContratos.findAll({where:{id_contrato: id}}).then(meses=>{
                    res.render(`${view}contrato`, {
                        usuarioLogado: getUser(res),
                        contrato: response,
                        veiculos: responseVeiculos,
                        contratoVeiculos: responseContratoVeiculos,
                        meses
                    })
                }).catch(erro=>{console.log(erro)})
            }).catch(erro=>{console.log(erro)})
        }).catch(erro=>{console.log(erro)})
    }).catch(erro=>{console.log(erro)})
})

contratosController.get('/painel/contrato/excluir/:id', authenticated, (req, res)=>{
    let {id} = req.params
    isNotId(res, id, '/painel/contratos')

    contratos.destroy({where: {id}}).then(()=>{
        req.flash('sucesso', 'Contrato excluido com sucesso!')
        res.redirect('/painel/contratos')
    }).catch(erro=>{console.log(erro)})
})
contratosController.get('/painel/contrato/editar/:id', authenticated, (req, res)=>{
    let {id} = req.params
    isNotId(res, id, '/painel/contratos')

    contratos.findOne({where: {id}}).then(response=>{
        cidades.findAll().then(responseCidades=>{
            res.render(`${view}editar-contrato`, {usuarioLogado: getUser(res), contrato: response, cidades: responseCidades})
        })
    }).catch(erro=>{console.log(erro)})
})

contratosController.post('/painel/contrato/editar', authenticated, (req, res)=>{
    let erros = ''
    let erro = 0

    const errosFlash = (str) =>{
        erro++
        erros = (!erros) ? erros = erros + str : erros = erros + ` / ${str}`
    }
    
    const notValue = (value, txt) => {
        if(!value) errosFlash(txt)
    }

    let {numero, orgao, empenho, edital, processo, cidade, contratante, inicio, termino, status, id} = req.body

    notValue(numero, 'Número não preenchido')
    notValue(orgao, 'Orgão não preenchido')
    notValue(empenho, 'Empenho não preenchido')
    notValue(edital, 'Edital não preenchido')
    notValue(processo, 'Processo não preenchido')
    notValue(cidade, 'Cidade não preenchida')
    notValue(contratante, 'Contratante não preenchido')
    notValue(inicio, 'Inicio do Contrato não preenchido')
    notValue(termino, 'Termino do Contrato não preenchido')
    notValue(status, 'Status não preenchido')
    
    if(erro > 0) {
        req.flash('erro', 'Erro ao editar contrato. Favor, reenviar o formulário de forma correta')
        req.flash('erros', erros)
        res.redirect(`/painel/contrato/${id}`)
    } else {
        contratos.update({numero, orgao, empenho, edital, processo, cidade, contratante, inicio, termino, status}, {where: {id}}).then(()=>{
            req.flash('sucesso', 'Contrato editado com sucesso!')
            res.redirect(`/painel/contrato/${id}`)
        }).catch(erro=>{console.log(erro)})
    }
})

contratosController.post('/painel/contrato/veiculo', authenticated, (req, res)=>{
    let erros = ''
    let erro = 0

    const errosFlash = (str) =>{
        erro++
        erros = (!erros) ? erros = erros + str : erros = erros + ` / ${str}`
    }
    
    const notValue = (value, txt) => {
        if(!value) errosFlash(txt)
    }

    let {idContrato, placa, dataEntrada, valorVeiculo} = req.body

    notValue(placa, 'Placa não selecionada')
    notValue(dataEntrada, 'Data de entrada não preenchida')
    notValue(valorVeiculo, 'Valor do veículo não preenchido')

    if(erro > 0) {
        req.flash('erro', 'Erro ao editar contrato. Favor, reenviar o formulário de forma correta')
        req.flash('erros', erros)
        res.redirect(`/painel/contrato/${idContrato}`)
    } else {
        veiculos.findOne({where: {placa}}).then(v=>{
            let idVeiculo = v.id
            contratoVeiculos.create({placa, idVeiculo, idContrato,  dataEntrada, valorVeiculo}).then(()=>{
                req.flash('sucesso', 'Veículo vinculado ao contrato com sucesso!')
                res.redirect(`/painel/contrato/${idContrato}`)
            }).catch(erro=>{console.log(erro)})
        }).catch(erro=>{console.log(erro)})
    }
})

contratosController.post('/painel/contrato/veiculo/saida', authenticated, (req, res)=>{
    let erros = ''
    let erro = 0

    const errosFlash = (str) =>{
        erro++
        erros = (!erros) ? erros = erros + str : erros = erros + ` / ${str}`
    }
    
    const notValue = (value, txt) => {
        if(!value) errosFlash(txt)
    }

    let {idContrato, saidaVeiculo, idVeiculo} = req.body

    notValue(saidaVeiculo, 'Data de saída não preenchida')

    if(erro > 0) {
        req.flash('erro', 'Erro ao lançar saída de veículo. Favor, reenviar o formulário de forma correta')
        req.flash('erros', erros)
        res.redirect(`/painel/contrato/${idContrato}`)
    } else {
        contratoVeiculos.update({saidaVeiculo}, {where: {idVeiculo}}).then(()=>{
            req.flash('sucesso', 'Saída de veículo com sucesso!')
            res.redirect(`/painel/contrato/${idContrato}`)
        }).catch(erro=>{console.log(erro)})
    }
})


contratosController.get('/painel/contrato/excluir/veiculo/:idVeiculo/:idContrato', authenticated, (req, res)=>{
    let {idVeiculo, idContrato} = req.params

    isNotId(res, idVeiculo, '/painel/contratos')
    isNotId(res, idContrato, '/painel/contratos')

    contratoVeiculos.destroy({where: {idVeiculo}}).then(()=>{
        req.flash('sucesso', 'Veículo desvinculado com sucesso!')
        res.redirect(`/painel/contrato/${idContrato}`)
    }).catch(erro=>{console.log(erro)})
})

contratosController.get('/painel/contrato/mes/:idMes/:numCont', authenticated, (req, res)=>{
    // let {id} = req.params
    res.render(`${view}mes`, {usuario: getUser(res)})
})

module.exports = contratosController
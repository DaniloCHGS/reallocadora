const express = require('express')
const manutencaoController = express.Router()
const {authenticated} = require('../helpers/helpers')
const {isNotId} = require('../helpers/helpers')
const veiculos = require('../models/veiculos')
const manutencao = require('../models/manutencao')
const itemEstoque = require('../models/itemEstoque')
const gastoManutencao = require('../models/gasto_manutencao')

const view = '../views/'
const getUser = res => {return res.locals.user.dataValues}

manutencaoController.post('/painel/manutencao/cadastro', authenticated, (req, res)=>{
    let erros = ''
    let erro = 0

    const errosFlash = (str) =>{
        erro++
        erros = (!erros) ? erros = erros + str : erros = erros + ` / ${str}`
    }
    
    const notValue = (value, txt) => {
        if(!value) errosFlash(txt)
    }
    let {placa, data, km, desc, usuario, responsavel, local, maoObra} = req.body

    notValue(placa, 'Número da placa não preenchido')
    notValue(data,  'Data não preenchida')
    notValue(km,    'Km não preenchido')
    notValue(desc,  'Descrição não preenchida')

    let abertura = `${new Date().toLocaleDateString('Brazil')} / ${new Date().toLocaleTimeString('Brazil')}`

    if(erro > 0) {
        req.flash('erro', 'Erro ao cadastrar manutenção. Favor, reenviar o formulário de forma correta')
        req.flash('erros', erros)
        res.redirect('/painel/manutencao')
    } else {
        manutencao.create({placa, data, km, desc, usuario, abertura, responsavel, local, maoObra, valorTotal: maoObra}).then(()=>{
            manutencao.findOne({where:{placa, data, km, desc, usuario, abertura, responsavel, local, maoObra}}).then(manu=>{
                res.redirect(`/painel/manutencao/gasto/${manu.id}`)
            })
            // req.flash('sucesso', 'Manutenção cadastrada com sucesso!')
            
        }).catch(erro=>{console.log(erro)})
    }
})

manutencaoController.get('/painel/manutencao/finalizar/:id', authenticated, (req, res)=>{
    let {id} = req.params
    isNotId(res, id, '/painel/manutencao')
    
    let fechamento = `${new Date().toLocaleDateString('Brazil')} / ${new Date().toLocaleTimeString('Brazil')}`

    manutencao.update({fechamento}, {where: {id}}).then(()=>{
        req.flash('sucesso', 'Manutenção finalizada com sucesso!')
        res.redirect(`/painel/manutencao/gasto/${id}`)
    }).catch(erro=>{console.log(erro)})
})

manutencaoController.get('/painel/red/veiculo/:placa', authenticated, (req, res)=>{
    let {placa} = req.params
    if(!placa || placa.length != 7) {
        res.redirect('/painel/manutencao')
    }

    veiculos.findOne({where:{placa}}).then(response=>{
        
        if(!response){
            req.flash('erro', 'Placa não encontrada. Favor, reenviar o formulário de forma correta')
            req.flash('erros', erros)
            res.redirect('/painel/manutencao')
        } else {
            res.redirect(`/painel/veiculo/${response.id}`)
        }

    }).catch(erro=>{console.log(erro)})
})

manutencaoController.post('/painel/manutencao/editar', authenticated, (req, res)=>{
    let erros = ''
    let erro = 0

    const errosFlash = (str) =>{
        erro++
        erros = (!erros) ? erros = erros + str : erros = erros + ` / ${str}`
    }
    
    const notValue = (value, txt) => {
        if(!value) errosFlash(txt)
    }

    let {placa, data, km, desc, id, responsavel, local, maoObra} = req.body
    
    notValue(placa, 'Número da placa não preenchido')
    notValue(data,  'Data não preenchida')
    notValue(km,    'Km não preenchido')
    notValue(desc,  'Descrição não preenchida')

    if(erro > 0) {
        req.flash('erro', 'Erro ao editar manutenção. Favor, reenviar o formulário de forma correta')
        req.flash('erros', erros)
        res.redirect(`/painel/manutencao/gasto/${id}`)
    } else {
        manutencao.update({placa, data, km, desc, responsavel, local, maoObra}, {where: {id}}).then(()=>{
            req.flash('sucesso', 'Manutenção editada com sucesso!')
            res.redirect(`/painel/manutencao/gasto/${id}`)
        }).catch(erro=>{console.log(erro)})
    }

})

manutencaoController.get('/painel/manutencao/excluir/:id', authenticated, (req, res)=>{
    let {id} = req.params
    isNotId(res, id, '/painel/manutencao')

    manutencao.destroy({where: {id}}).then(()=>{
        req.flash('sucesso', 'Manutenção excluida com sucesso!')
        res.redirect('/painel/manutencao')
    }).catch(erro=>{console.log(erro)})
})

manutencaoController.get('/painel/manutencao/gasto/:id', authenticated, (req, res)=>{
    let {id} = req.params
    isNotId(res, id, '/painel/manutencao')

    manutencao.findOne({where: {id}}).then(response=>{
        itemEstoque.findAll().then(resItens=>{
            gastoManutencao.findAll({where:{id_manutencao:id}}).then(resGasto=>{
                veiculos.findAll().then(resVei=>{
                    res.render(`${view}gasto`, {
                        usuarioLogado: getUser(res),
                        manutencao: response,
                        itens: resItens,
                        gastos: resGasto,
                        veiculos: resVei
                    })
                }).catch(erro=>{console.log(erro)})
            }).catch(erro=>{console.log(erro)})
        }).catch(erro=>{console.log(erro)})
    })
})

manutencaoController.post('/painel/manutencao/gasto/incluir', authenticated, (req, res)=>{
    let erros = ''
    let erro = 0

    const errosFlash = (str) =>{
        erro++
        erros = (!erros) ? erros = erros + str : erros = erros + ` / ${str}`
    }
    
    const notValue = (value, txt) => {
        if(!value) errosFlash(txt)
    }

    let {id_manutencao, nome, valor, codigo, qtdItem, resultado, totalManutencao} = req.body
    

    notValue(qtdItem, 'Quantidade de itens não preenchida')

    if(erro > 0) {
        req.flash('erro', 'Erro ao incluir gasto. Favor, reenviar o formulário de forma correta')
        req.flash('erros', erros)
        res.redirect()
    } else {
        gastoManutencao.create({id_manutencao, codigo, nome, valor, quantidade: qtdItem, total:resultado}).then(()=>{

            manutencao.update({valorTotal: totalManutencao}, {where: {id: id_manutencao}}).then(()=>{

                itemEstoque.findOne({where:{codigo}}).then(resItem=>{
                    let item = resItem
                    let qtdItemResult = parseInt(item.qtdItem) - parseInt(qtdItem)

                    itemEstoque.update({qtdItem: qtdItemResult},{where: {id: item.id}}).then(()=>{
                        req.flash('sucesso', 'Item incluso em manutenção com sucesso!')
                        res.redirect(`/painel/manutencao/gasto/${id_manutencao}`)
                    }).catch(erro=>{console.log(erro)})
                })
                
            }).catch(erro=>{console.log(erro)})
            
        }).catch(erro=>{console.log(erro)})
    }
    
})

manutencaoController.post('/painel/manutencao/gasto/remover/', authenticated, (req, res)=>{
    
    let {manutencaoId, gastoId, codigoItem, quantidadeItem, valor} = req.body

    var valorItem = parseInt(valor)
    var qtdItem = parseInt(quantidadeItem)
    var resultado = valorItem * qtdItem

    gastoManutencao.destroy({where:{id: gastoId}}).then(()=>{

        itemEstoque.findOne({where:{codigo: codigoItem}}).then(item=>{
            let qtdItemResult = parseInt(item.qtdItem) + parseInt(quantidadeItem)
            itemEstoque.update({qtdItem: qtdItemResult}, {where: {codigo: codigoItem}}).then(()=>{

                manutencao.findOne({where:{id: manutencaoId}}).then(manutencao=>{
                    let valorTotal = parseInt(manutencao.valorTotal)
                    valorTotal = valorTotal - resultado
                    manutencao.update({valorTotal: valorTotal}, {where: {id: manutencaoId}}).then(()=>{
                        req.flash('sucesso', 'Gasto removido com sucesso!')
                        res.redirect(`/painel/manutencao/gasto/${manutencaoId}`)
                    }).catch(erro=>{console.log(erro)})
                }).catch(erro=>{console.log(erro)})
            }).catch(erro=>{console.log(erro)})
        }).catch(erro=>{console.log(erro)})
    })
    
})

manutencaoController.get('/painel/manutencao/excluir/:id', authenticated, (req, res)=>{
    let {id} = req.params
    isNotId(res, id, '/painel/manutencao')

    manutencao.destroy({where:{id}}).then(()=>{
        req.flash('sucesso', 'Manutenção excluida com sucesso!')
        res.redirect('/painel/manutencao')
    })
})

module.exports = manutencaoController
const express = require('express')
const main = express.Router()

//Autenticação por rota
const {authenticated} = require('../helpers/helpers')

let view = '../views/'

let log = []

main.get('/', (req, res)=>{
    res.render(`${view}index`)
})


main.get('/feed', authenticated, (req, res)=>{
    postagens.findAll().then(post =>{
        res.render(`${view}feed`, {post, authenticated})
    }).catch(erro=>{
        erroLog(`Erro ao buscar todas postagens/ Erro ${erro}`)
    })
})


main.get('/perfil/:autor', authenticated, (req, res)=>{
    let {autor} = req.params
    postagens.findAll({where:{autor}}).then(post=>{
        res.render(`${view}perfil`, {post})
    }).catch(erro=>{
        erroLog(`Erro ao buscar todas postagens do autor: ${autor}/ Erro ${erro}`)
    })
})


main.get('/postagens/autor/:autor', authenticated, (req, res)=>{
    let {autor} = req.params
    postagens.findAll({where:{autor}}).then(post=>{
        res.render(`${view}postagem`, {post})
    }).catch(erro=>{
        erroLog(`Erro ao buscar todas postagens/Autor: ${autor}/ Erro ${erro}`)
    })
})

main.post('/postagem/criar', authenticated, (req, res)=>{
    let erro = []
    let {titulo, post} = req.body
    let autor = req.user.nome
    if(!titulo) erroVal('Titulo não descrito', erro)
    if(!post) erroVal('Postagem não descrita', erro)

    if(erro.length > 0){
        res.render(`${view}perfil`, {erro})
    } else {
        postagens.create({titulo, post, autor}).then(()=>{
            req.flash('sucesso', 'Postagem criada com sucesso!')
            res.redirect(`/perfil/${req.user.nome}`)
        }).catch(erro=>{
            erroLog(`Erro ao criar postagem/ Titulo: ${titulo} - Post: ${post} - Autor: ${autor}/ Erro ${erro}`)
        })
    }
})


main.get('/postagem/excluir/:id', authenticated, (req, res)=>{
    let {id} = req.params
    postagens.destroy({where:{id}}).then(()=>{
        req.flash('sucesso', 'Postagem excluida com sucesso')
        res.redirect(`/perfil/${req.user.nome}`)
    })
})


main.post('/postagem/editar', authenticated, (req, res)=>{
    let {post, id} = req.body
    postagens.update({post}, {where:{id}}).then(()=>{
        req.flash('sucesso', 'Post alterado com sucesso!')
        res.redirect(`/perfil/${req.user.nome}`)
    }).catch(erro=>{
        erroLog(`Erro ao editar postagem/Post: ${post}/ Erro ${erro}`)
    })
})

function erroVal(msg, vet){vet.push({texto: msg})}

function erroLog(msg){
    log.push({erro: msg})
    log.forEach(lg=>{console.log(lg)})
}

module.exports = main
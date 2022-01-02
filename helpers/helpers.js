//Rotas protegidas caso usuário não seja autenticado
module.exports = {
    authenticated: (req, res, next)=>{
        if(req.isAuthenticated()){
            return next()
        }
        req.flash('erro', 'Usuário não credenciado')
        res.redirect('/login')
    },
    authRouter: (req, res, area, callback)=>{
        let acessoUsuario = req.user.dataValues.acesso
        // area == acessoUsuario || 
        if(acessoUsuario == 'adm'){
            callback()
        } else {
            let erros = `Tentativa de acesso em: ${area}`
            req.flash('erro', 'Usuário sem acesso. Contate um administrador do sistema')
            req.flash('erros', erros)
            res.redirect('/painel')
        }
    },
    isNotId:(res, id, route)=>{
        if(!id || isNaN(id)){
            res.redirect(route)
        }
    },
    historicoRegistro:({nome, acao, msg, data},callback)=>{
        historico.create({nome, acao, msg, data}).then(()=>{
            callback({nome, acao, msg, data})
        }).catch(erro=>{console.log(erro)})
    }
}
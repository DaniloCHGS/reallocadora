//autenticação de usuário
const strategy = require('passport-local').Strategy
const usuarios = require('../models/usuarios')
const bscrypt = require('bcryptjs')

module.exports = passport =>{
    passport.use(new strategy({usernameField: 'email', passwordField: 'senha'}, (email, senha, done)=>{
        usuarios.findOne({where:{email}}).then(usuario=>{
            if(!usuario){
                return done(null, false, {mensagem: 'Usuário não existe'})
            }
            bscrypt.compare(senha, usuario.senha, (erro, senhaValida)=>{
                if(senhaValida){
                    return done(null, usuario)
                }
                return done(null, false, {mensagem: 'Senha inválida'})
            })
        })
    }))
    passport.serializeUser((usuario, done)=>{
        return done(null, usuario.id)
    })
    passport.deserializeUser((id, done)=>{
        usuarios.findOne({where:{id}}).then(usuario=>{
            return done(null, usuario)
        })
    })
}
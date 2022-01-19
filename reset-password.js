const bcrypt = require('bcryptjs')
let senha = 'locadora2022*'
bcrypt.genSalt(10, (erro, salt)=>{
    bcrypt.hash(senha, salt, (erro, hash)=>{
        if(erro){
            erroLog(`Erro ao hashear senha/ Erro ${erro}`)
            res.redirect('/login')
        }
        senha = hash
        console.log(senha)
    })
})
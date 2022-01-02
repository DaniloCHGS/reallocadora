const db = require('./DB')
const usuarios = db.sequelize.define('usuarios', {
    nome: {
        type: db.Sequelize.STRING
    },
    email: {
        type: db.Sequelize.STRING
    },
    senha: {
        type: db.Sequelize.STRING
    },
    adm: {
        type: db.Sequelize.BOOLEAN
    },
    acesso: {
        type: db.Sequelize.STRING
    }
})
module.exports = usuarios
// usuarios.sync()
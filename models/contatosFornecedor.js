const db = require('./DB')
const contatosFornecedor = db.sequelize.define('contatosfornecedor', {
    nome: {
        type: db.Sequelize.STRING
    },
    celular: {
        type: db.Sequelize.STRING
    },
    telefone: {
        type: db.Sequelize.STRING
    },
    email: {
        type: db.Sequelize.STRING
    },
    idForncedor: {
        type: db.Sequelize.STRING
    }

})
module.exports = contatosFornecedor
// contatosFornecedor.sync()
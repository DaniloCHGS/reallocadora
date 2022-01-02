const db = require('./DB')
const fornecedores = db.sequelize.define('fornecedores', {
    empresa: {
        type: db.Sequelize.STRING
    },
    cidade: {
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
    desc: {
        type: db.Sequelize.STRING
    }
})
module.exports = fornecedores
// fornecedores.sync({force: true})
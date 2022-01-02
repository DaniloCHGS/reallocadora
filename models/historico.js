const db = require('./DB')
const historico = db.sequelize.define('historico', {
    nome: {
        type: db.Sequelize.STRING
    },
    acao: {
        type: db.Sequelize.STRING
    },
    msg: {
        type: db.Sequelize.STRING
    },
    data: {
        type: db.Sequelize.STRING
    }
})
module.exports = historico
// historico.sync({force: true})
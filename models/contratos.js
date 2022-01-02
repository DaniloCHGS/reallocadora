const db = require('./DB')
const contratos = db.sequelize.define('contratos', {
    numero: {
        type: db.Sequelize.STRING
    },
    orgao: {
        type: db.Sequelize.STRING
    },
    empenho: {
        type: db.Sequelize.STRING
    },
    edital: {
        type: db.Sequelize.STRING
    },
    processo: {
        type: db.Sequelize.STRING
    },
    cidade: {
        type: db.Sequelize.STRING
    },
    contratante: {
        type: db.Sequelize.STRING
    },
    inicio: {
        type: db.Sequelize.STRING
    },
    termino: {
        type: db.Sequelize.STRING
    },
    status: {
        type: db.Sequelize.STRING
    }
})
module.exports = contratos
// contratos.sync({force: true})
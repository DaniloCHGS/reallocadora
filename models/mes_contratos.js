const db = require('./DB')
const mes_contratos = db.sequelize.define('mes_contratos', {
    mes: {
        type: db.Sequelize.STRING
    },
    contrato: {
        type: db.Sequelize.STRING
    },
    status: {
        type: db.Sequelize.STRING
    },
    valor_total: {
        type: db.Sequelize.STRING
    },
    id_contrato: {
        type: db.Sequelize.STRING
    },
    prorrogadoQtd: {
        type: db.Sequelize.STRING
    }
})
module.exports = mes_contratos
// mes_contratos.sync({force: true})
const db = require('./DB')
const contratoVeiculos = db.sequelize.define('contrato_veiculos', {
    placa: {
        type: db.Sequelize.STRING
    },
    idVeiculo: {
        type: db.Sequelize.STRING
    },
    idContrato: {
        type: db.Sequelize.STRING
    },
    dataEntrada: {
        type: db.Sequelize.STRING
    },
    valorVeiculo: {
        type: db.Sequelize.STRING
    },
    saidaVeiculo: {
        type: db.Sequelize.STRING
    }
})
module.exports = contratoVeiculos
// contratoVeiculos.sync({force: true})
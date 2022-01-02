const db = require('./DB')
const veiculos = db.sequelize.define('veiculos', {
    placa: {
        type: db.Sequelize.STRING
    },
    renavan: {
        type: db.Sequelize.STRING
    },
    marca: {
        type: db.Sequelize.STRING
    },
    ano: {
        type: db.Sequelize.STRING
    },
    modelo: {
        type: db.Sequelize.STRING
    },
    tipo: {
        type: db.Sequelize.STRING
    },
    nomeFornecedor: {
        type: db.Sequelize.STRING
    },
    valorCompra: {
        type: db.Sequelize.STRING
    },
    valorVenda:{
        type: db.Sequelize.STRING
    },
    status: {
        type: db.Sequelize.STRING
    }
})
module.exports = veiculos
// veiculos.sync({force: true})
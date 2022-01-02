const db = require('./DB')
const itemEstoque = db.sequelize.define('itemestoque', {
    codigo: {
        type: db.Sequelize.STRING
    },
    nomeItem: {
        type: db.Sequelize.STRING
    },
    fabricante: {
        type: db.Sequelize.STRING
    },
    fornecedor: {
        type: db.Sequelize.STRING
    },
    valorItem: {
        type: db.Sequelize.STRING
    },
    ultimaCompra: {
        type: db.Sequelize.STRING
    },
    desc: {
        type: db.Sequelize.STRING
    },
    qtdItem: {
        type: db.Sequelize.STRING
    },
    valorUltimaCompra: {
        type: db.Sequelize.STRING
    }
})
module.exports = itemEstoque
// itemEstoque.sync({force: true})
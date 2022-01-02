const db = require('./DB')
const gasto_manutencao = db.sequelize.define('gasto_manutencao', {
    id_manutencao: {
        type: db.Sequelize.STRING
    },
    codigo: {
        type: db.Sequelize.STRING
    },
    nome: {
        type: db.Sequelize.STRING
    },
    valor: {
        type: db.Sequelize.STRING
    },
    quantidade: {
        type: db.Sequelize.STRING
    },
    total: {
        type: db.Sequelize.STRING
    }
})
module.exports = gasto_manutencao
// gasto_manutencao.sync({force: true})
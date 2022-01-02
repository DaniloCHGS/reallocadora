const db = require('./DB')
const manutencao = db.sequelize.define('manutencao', {
    data: {
        type: db.Sequelize.STRING
    },
    km: {
        type: db.Sequelize.STRING
    },
    desc: {
        type: db.Sequelize.STRING
    },
    placa: {
        type: db.Sequelize.STRING
    },
    usuario: {
        type: db.Sequelize.STRING
    },
    abertura: {
        type: db.Sequelize.STRING
    },
    fechamento : {
        type: db.Sequelize.STRING
    },
    valorTotal: {
        type: db.Sequelize.STRING
    },
    responsavel: {
        type: db.Sequelize.STRING
    },
    local: {
        type: db.Sequelize.STRING
    },
    maoObra: {
        type: db.Sequelize.STRING
    }
})
module.exports = manutencao
// manutencao.sync({force: true})
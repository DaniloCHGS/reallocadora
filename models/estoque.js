const db = require('./DB')
const estoque = db.sequelize.define('estoque', {
    idItem: {
        type: db.Sequelize.STRING
    },
    qtdItem: {
        type: db.Sequelize.STRING
    }
})
module.exports = estoque
// estoque.sync({force: true})
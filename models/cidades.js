const db = require('./DB')
const cidades = db.sequelize.define('cidades', {
    nome: {
        type: db.Sequelize.STRING
    }
})
module.exports = cidades
// cidades.sync()
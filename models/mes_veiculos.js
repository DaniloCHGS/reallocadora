const db = require('./DB')
const mes_veiculos = db.sequelize.define('mes_veiculos', {
    mes: {
        type: db.Sequelize.DATE
    },
    inicio: {
        type: db.Sequelize.DATE
    },
    encerramento: {
        type: db.Sequelize.DATE
    },
    placa: {
        type: db.Sequelize.STRING
    },
    valor: {
        type: db.Sequelize.DOUBLE
    },
    data_pagamento: {
        type: db.Sequelize.STRING
    },
    valor_pagamento: {
        type: db.Sequelize.STRING
    }
})
// mes_veiculos.sync()
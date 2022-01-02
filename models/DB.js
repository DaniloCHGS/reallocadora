const Sequelize = require('sequelize')
const sequelize = new Sequelize('reallocadora', 'reallocado_add2', 'appbanco2021', {host: 'mysql.reallocadora.net.br', dialect: 'mysql'})
module.exports = {Sequelize: Sequelize, sequelize: sequelize}
// appbanco2021
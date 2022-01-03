const Sequelize = require('sequelize')
const sequelize = new Sequelize('reallocadora01', 'realloca01_add1', 'desenvolvimento2021', {host: 'mysql.reallocadora.net.br', dialect: 'mysql'})
module.exports = {Sequelize: Sequelize, sequelize: sequelize}
// appbanco2021
//Banco reallocadora01 é bancop de testes / senha desenvolvimento2021
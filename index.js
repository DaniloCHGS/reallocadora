//Importação das dependências
const express = require('express')
const bodyParser = require('body-parser')
const cors = require('cors')

const mainController = require('./routes/mainController')
const veiculosController = require('./routes/veiculosController')
const contratosController = require('./routes/contratosController')
const fornecedoresController = require('./routes/fornecedoresController')
const usuariosController = require('./routes/usuariosController')
const manutencaoController = require('./routes/manutencaoController')
const mesController = require('./routes/mesController')
const estoqueController = require('./routes/estoqueController')
const loginController = require('./routes/loginController')
const relatorioController = require('./routes/relatorioController')

//Sessão
const session = require('express-session')
const flash = require('connect-flash')

//Autenticação
const passport = require('passport')
require('./config/auth')(passport)
const {authenticated} = require('./helpers/helpers')

const app = express()

//config de sessão
app.use(session({secret: 'deltatec-key-server-app', resave: true, saveUninitialized: true}))

//config de autenticação
app.use(passport.initialize())
app.use(passport.session())

app.use(flash())

app.use(cors())

//variaveis globais
app.use((req, res, next)=>{
    res.locals.sucesso = req.flash('sucesso')
    res.locals.erro = req.flash('erro')
    res.locals.error = req.flash('error')
    res.locals.erros = req.flash('erros')
    //dados do usuário
    res.locals.user = req.user || null
    //função autenteticar por rota
    res.locals.authenticated = authenticated || null
    next()
})

//corpo de requisição em json
app.use(bodyParser.urlencoded({extended: false}))
app.use(bodyParser.json())

//view engine
app.set('view engine', 'ejs')

//arquivos estáticos
app.use(express.static('public'))

//rotas
app.use('/', loginController)
app.use('/', mainController)
app.use('/', veiculosController)
app.use('/', contratosController)
app.use('/', fornecedoresController)
app.use('/', usuariosController)
app.use('/', manutencaoController)
app.use('/', estoqueController)
app.use('/', mesController)
app.use('/', relatorioController)

app.use(function (req, res, next) {
    res.status(404).redirect('/erro/404')
})

app.listen(21033, ()=>{console.log('Servidor Node online')})

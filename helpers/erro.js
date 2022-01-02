module.exports = class Erro {
    constructor(){
        this.rota
        this.link
        this.erro = []
    }
    setRota(rota, link){
        this.rota = rota
        this.link = link
    }
    erroMessage(str){
        this.erro.push({er: str})
    }
    dataGenerator(){ 
        return {
            rota: (this.rota) ? this.rota : 'Painel',
            link: (this.link) ? this.link : '/painel',
            erro: (this.erro.length > 0) ? this.erro : this.erroMessage('Não há erros')
        }
    }
    erroRedirectTo(res) {
        res.render('../views/erro', this.dataGenerator())
    }
}
let listCheckBox = [...document.querySelectorAll('input[type="checkbox"]')]
let listInputQtd = [...document.querySelectorAll('input[type="number"]')]
let listButtons = [...document.querySelectorAll('button[data-check]')]
let listItens = []
let removerBtns = []


// Habilitar inputs
listCheckBox.forEach(checkbox=>{
    checkbox.addEventListener('click', event=>{

        let findInput = checkbox.getAttribute('data-check')
        let isChecked = checkbox.checked
        
        if(isChecked) {
            var input = document.querySelector(`input[data-qtd="${findInput}"]`)
            var button = document.querySelector(`button[data-check="${findInput}"]`)
            button.disabled = false
            input.disabled = false
        } else {
            var input = document.querySelector(`input[data-qtd="${findInput}"]`)
            var button = document.querySelector(`button[data-check="${findInput}"]`)
            button.disabled = true
            input.value = 0
            input.disabled = true
        }

    })
})

listButtons.forEach(btn=>{
    btn.addEventListener('click', event=>{
        var input = document.querySelector(`input[data-qtd="${btn.getAttribute('data-check')}"]`)
        let item = input.dataset
        let valorItem = parseFloat(item.valoritem)
        let qtd = parseInt(input.value)
        let result = parseFloat(valorItem * qtd)
        item = {
            nome: item.nomeitem,
            codigo: item.codigo,
            valor: item.valoritem,
            quantidade: qtd,
            resultado: result,
            id: item.id
        }
        listItens.push(item)
        input.value = 0
        input.disabled = true
        btn.disabled = true
        document.querySelector(`[data-check="${btn.getAttribute('data-check')}"]`).checked = false
        resumo(item.id)
    })
})

let form = document.getElementById('criariUsuario')
form.addEventListener('submit', event=>{
    event.preventDefault()

})

function resumo(id){
    let registro = document.getElementById('registro')
    let div = document.createElement('div')
    div.classList.add('form-group')
    div.setAttribute('id', `registro-${id}`)

    listItens.forEach(item=>{
        div.innerHTML = 
        `
        <label>
            <strong>Nome:</strong> <span class="nome">${item.nome}</span> 
            - <strong>Valor/unidade:</strong> <span class="vlu">${item.valor}</span> 
            - <strong>Qtd:</strong> <span class="qtd">${item.quantidade}</span>
            - <strong>Resultado:</strong> <span class="res">${item.resultado}</span>
            - <button type="button" class="btn btn-sm btn-warning" data-remove="${item.id}" > Remover </button>
        </label>
        <hr>
        `
        registro.appendChild(div)
    })

    removerBtns = [...document.querySelectorAll('button[data-remove]')]
    removerBtns.forEach(btn=>{
        btn.addEventListener('click', event=>{
            var el = document.getElementById(`registro-${id}`);
            el.parentNode.removeChild( el );
            console.log('antiga: '+listItens)

            var filtro = listItens.filter(item=>{
                if(item.id != btn.getAttribute('data-check')) return item
            })
            console.log(filtro)
        })
    })
    
}

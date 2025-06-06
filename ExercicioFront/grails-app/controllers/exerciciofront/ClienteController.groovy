package exerciciofront

import grails.converters.JSON

class ClienteController {

    EnderecoClienteService enderecoClienteService;

    def index() {}

    def preencherEndereco(){
        String cep = params.cep
        def endereco = enderecoClienteService.getEnderecoPorCep(cep)
        if(endereco){
            render([
                    logradouro: endereco.logradouro,
                    estado: endereco.uf,
                    cidade: endereco.localidade,
                    bairro: endereco.bairro
            ] as JSON)
        } else{
            render(status: 404, text: "Cep não encontrado")
        }
    }
}
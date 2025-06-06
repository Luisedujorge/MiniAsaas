package exerciciofront

import grails.gorm.transactions.Transactional
import java.net.URL
import groovy.json.JsonSlurper

@Transactional
class EnderecoClienteService {

    def getEnderecoPorCep(String cep) {
        if (!cep) {
            return null
        }
        String urlCep = "https://viacep.com.br/ws/${cep}/json/"

        try {
            def url = new URL(urlCep)
            def connection = url.openConnection()
            def response = connection.inputStream.text
            def jsonResponse = new JsonSlurper().parseText(response)

            if (jsonResponse.erro) {
                return null
            }
            return jsonResponse
        } catch (Exception e) {
            log.error("Erro ao consultar o CEP: ${e.message}")
            return null
        }
    }
}

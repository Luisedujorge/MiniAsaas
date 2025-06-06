package exerciciofront

class Cliente {
    String nome
    String cpf
    String telefone
    String cep
    String estado
    String cidade
    String bairro
    String logradouro

    static constraints = {
        nome blank: false
        cpf size: 11..11, unique: true
        telefone size: 11..11
        cep size: 8..8
        estado nullable: false
        cidade nullable: false
        bairro nullable: false
        logradouro nullable: false
    }
}


function preencherEndereco() {
    var cep = document.getElementById("cep").value;
    if (cep.length === 8) {
        fetch("/cliente/preencherEndereco?cep=" + cep)
            .then(response => response.json())
            .then(data => {
                if (data.logradouro) {
                    document.getElementsByName("logradouro")[0].value = data.logradouro;
                    document.getElementsByName("bairro")[0].value = data.bairro;
                    document.getElementsByName("cidade")[0].value = data.cidade;
                    document.getElementsByName("estado")[0].value = data.estado;
                } else {
                    alert("CEP não encontrado");
                }
            })
            .catch(error => {
                console.error("Erro:", error);
                alert("Erro ao preencher endereço");
            });
    }
}

document.addEventListener("DOMContentLoaded", function () {
    const form = document.querySelector("form");

    form.addEventListener("submit", function (event) {
        event.preventDefault();
        const nome = document.getElementsByName("nome")[0].value;
        const cpf = document.getElementsByName("cpf")[0].value;
        const telefone = document.getElementsByName("telefone")[0].value;
        const cep = document.getElementsByName("cep")[0].value;
        const estado = document.getElementsByName("estado")[0].value;
        const cidade = document.getElementsByName("cidade")[0].value;
        const bairro = document.getElementsByName("bairro")[0].value;
        const logradouro = document.getElementsByName("logradouro")[0].value;

        console.log("Dados do cliente:");
        console.log("Nome:", nome);
        console.log("CPF:", cpf);
        console.log("Telefone:", telefone);
        console.log("CEP:", cep);
        console.log("Estado:", estado);
        console.log("Cidade:", cidade);
        console.log("Bairro:", bairro);
        console.log("Logradouro:", logradouro);

        const mensagemDiv = document.getElementById("mensagem");
        mensagemDiv.classList.remove("d-none");
        form.reset();
    });
});
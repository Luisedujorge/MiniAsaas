<!doctype html>
<html>
<head>
    <asset:stylesheet src="bootstrap.css"/>
</head>
<body>
<div class="top mb-4">
    <asset:stylesheet src="custom.css"/>
    <h2 class="d-flex justify-content-center">Cadastro de cliente</h2>
</div>
<div class="container">
    <div class="card mt-3">
        <div id="mensagem" class="alert alert-success d-none" role="alert">
            Formulário enviado com sucesso!
        </div>
        <div class="d-flex justify-content-center">
            <form class="card-body" style="max-width: 400px">
                <div class="form-group">
                    <label for="nome">Nome</label>
                    <input class="form-control" type="text" name="nome" required>
                </div>
                <div class="form-group">
                    <label for="cpf">CPF</label>
                    <input class="form-control" type="text" name="cpf" required>
                </div>
                <div class="form-group">
                    <label for="telefone">Telefone</label>
                    <input class="form-control" type="text" name="telefone" required>
                </div>
                <div class="form-group">
                    <label for="Cep">Cep</label>
                    <input class="form-control" type="text" id="cep" name="cep" onblur="preencherEndereco()" required>
                </div>
                <div class="form-group">
                    <label for="estado">Estado</label>
                    <input class="form-control" type="text" id="estado" name="estado" required>
                </div>
                <div class="form-group">
                    <label for="cidade">Cidade</label>
                    <input class="form-control" type="text" id="cidade" name="cidade" required>
                </div>
                <div class="form-group">
                    <label for="bairro">Bairro</label>
                    <input class="form-control" type="text" id="bairro" name="bairro" required>
                </div>
                <div class="form-group">
                    <label for="logradouro">Logradouro</label>
                    <input class="form-control" type="text" id="logradouro" name="logradouro" required>
                </div>
                <button class="btn btn-primary" type="submit">Enviar</button>
            </form>
        </div>
        <asset:javascript src="getEndereco.js"/>
    </div>
</div>
</body>
</html>
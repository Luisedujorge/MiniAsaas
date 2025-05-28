CREATE TABLE pagador (
    id_pagador INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    tipo VARCHAR(255) NOT NULL,
    cpf_cnpj VARCHAR(14) NOT NULL,
    telefone VARCHAR(13),
    email VARCHAR(100),
    endereco VARCHAR(255),
    bairro VARCHAR(255),
    cidade VARCHAR(255),
    estado CHAR(2)
);

CREATE TABLE dono (
    id_dono INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    tipo VARCHAR(255) NOT NULL,
    cpf_cnpj VARCHAR(14) NOT NULL, 
    telefone VARCHAR(13),
    email VARCHAR(100),
    endereco VARCHAR(255),
    bairro VARCHAR(255),
    cidade VARCHAR(255),
    estado CHAR(2)
);

CREATE TABLE cobranca (
    id_cobranca INT PRIMARY KEY AUTO_INCREMENT,
    valor DECIMAL(10, 2) NOT NULL,
    descricao VARCHAR(255),
    data_de_vencimento DATE NOT NULL,
    id_pagador INT NOT NULL,
    id_dono INT NOT NULL,
    situacao VARCHAR(255) NOT NULL,
    FOREIGN KEY  (id_pagador) REFERENCES pagador(id_pagador),
    FOREIGN KEY (id_dono) REFERENCES dono(id_dono)
);

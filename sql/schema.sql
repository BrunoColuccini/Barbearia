CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    criado DATETIME DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);


CREATE TABLE servicos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    preco DECIMAL(8,2) NOT NULL,
    duracao_min INT NOT NULL,
    categoria_id INT NOT NULL,
    FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);


CREATE TABLE barbeiros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100)
);


CREATE TABLE barbeiro_servico (
    barbeiro_id INT NOT NULL,
    servico_id INT NOT NULL,
    PRIMARY KEY (barbeiro_id, servico_id),
    FOREIGN KEY (barbeiro_id) REFERENCES barbeiros(id),
    FOREIGN KEY (servico_id) REFERENCES servicos(id)
);
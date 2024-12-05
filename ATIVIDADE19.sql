DROP DATABASE IF EXISTS db_cliente;

CREATE DATABASE IF NOT EXISTS db_confeitaria;

USE db_confeitaria;

CREATE TABLE IF NOT EXISTS tb_cliente(
id_cliente INT AUTO_INCREMENT PRIMARY KEY,
nome_cliente VARCHAR(100) NOT NULL,
cpf VARCHAR(11),
email_cliente VARCHAR(100) NOT NULL,
telefone VARCHAR(11) NOT NULL
);

CREATE TABLE IF NOT EXISTS tb_funcionario(
id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
nome_funcionario VARCHAR(100) NOT NULL,
cpf VARCHAR(11),
email_funcionario VARCHAR(100) NOT NULL,
telefone VARCHAR(11) NOT NULL,
FOREIGN KEY(CLIENTE_id_cliente) REFERENCES tb_cliente(id_cliente)
);
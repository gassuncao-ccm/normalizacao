CREATE TABLE CLIENTES(
    COD_CLIENTE VARCHAR(10) NOT NULL,
	NOME VARCHAR(50) NOT NULL,
	EMAIL VARCHAR(50) NOT NULL,
	RUA VARCHAR(50) NOT NULL,
	BAIRRO VARCHAR(50) NOT NULL,
	CIDADE VARCHAR(50) NOT NULL,
	ESTADO VARCHAR(50) NOT NULL,
 PRIMARY KEY (COD_CLIENTE)
);


CREATE TABLE TELEFONES_CLIENTES(
    COD_TELEFONE VARCHAR(10) NOT NULL,
    COD_CLIENTE  VARCHAR(10) NOT NULL,
    TELEFONES VARCHAR(15) NOT NULL,
 PRIMARY KEY (COD_TELEFONE)
);


CREATE TABLE LIVROS(
    COD_LIVRO VARCHAR(10) NOT NULL,
	VALOR DECIMAL(5,2) NOT NULL,
	ANO_PUBLICACAO INT NOT NULL,
    CATEGORIA VARCHAR(25) NOT NULL,
    TITULO VARCHAR(50) NOT NULL,
    ISBN INT NOT NULL,
    COD_AUTOR VARCHAR(10) NOT NULL,
	COD_EDITORA VARCHAR(10) NOT NULL,
	QTD_ESTOQUE INT NOT NULL,
 PRIMARY KEY (COD_LIVRO)
);


CREATE TABLE AUTORES(
    COD_AUTOR VARCHAR(10) NOT NULL,
    AUTOR VARCHAR(25) NOT NULL,
    EMAIL VARCHAR(50),
 PRIMARY KEY (COD_AUTOR)
);


CREATE TABLE EDITORAS(
	COD_EDITORA VARCHAR(10) NOT NULL,
    TELEFONE VARCHAR(50),
    EMAIL VARCHAR(50),
    NOME_CONTATO VARCHAR(50) NOT NULL,
 PRIMARY KEY (COD_EDITORA)
);


CREATE TABLE PEDIDOS(
    COD_PEDIDO VARCHAR(10) NOT NULL,
    COD_CLIENTE VARCHAR(20) NOT NULL,
    COD_LOJA VARCHAR(20) NOT NULL,
    DATA DATE NOT NULL,
    VALOR_PEDIDO DECIMAL(5,2) NOT NULL,
 PRIMARY KEY (COD_PEDIDO)
);


CREATE TABLE ITENS_PEDIDOS(
    COD_PEDIDO VARCHAR(10) NOT NULL,
    COD_LIVRO VARCHAR(10) NOT NULL,
    QTD_PEDIDO INT NOT NULL,
    VALOR_ITENS DECIMAL(5,2) NOT NULL,
 PRIMARY KEY (COD_PEDIDO, COD_LIVRO)
);


CREATE TABLE COLABORADORES (
    COD_COLAB VARCHAR(10) NOT NULL,
    NOME VARCHAR(100) NOT NULL,
    PRIMARY KEY (COD_COLAB)
);


CREATE TABLE COLABORADORES_CARGOS (
    COD_COLAB VARCHAR(10) NOT NULL,
    COD_SAL_CAR VARCHAR(10) NOT NULL,
    PRIMARY KEY (COD_COLAB, COD_SAL_CAR)
);


CREATE TABLE SALARIOS_CARGOS (
    COD_SAL_CAR VARCHAR(10) NOT NULL,
    DEPARTAMENTO VARCHAR(50) NOT NULL,
    CARGO VARCHAR(50) NOT NULL,
    SALARIO_BASE DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (COD_SAL_CAR)
);


CREATE TABLE DEPENDENTES (
    COD_DEP VARCHAR(10) NOT NULL,
    COD_COLAB VARCHAR(10) NOT NULL,
    DEPENDENTES VARCHAR(50) NOT NULL,
    PRIMARY KEY (COD_DEP)
);

CREATE TABLE LOJAS(
    COD_LOJA VARCHAR(10) NOT NULL,
    LOJA VARCHAR(50),
    PRIMARY KEY (COD_LOJA)
);

CREATE TABLE FORNECEDORES(
    COD_FORN VARCHAR(10) NOT NULL, 
    FORNECEDOR VARCHAR(50),
    PRIMARY KEY (COD_FORN)
);


CREATE TABLE FORNECEDOR_LOJA(
    COD_FORN VARCHAR(10) NOT NULL, 
    COD_LOJA VARCHAR(10) NOT NULL,
    PRIMARY KEY (COD_FORN, COD_LOJA)
);


CREATE TABLE FORNECEDOR_EDITORA(
    COD_FORN VARCHAR(10) NOT NULL, 
    COD_EDITORA VARCHAR(10) NOT NULL,
    PRIMARY KEY (COD_FORN, COD_EDITORA)
);

CREATE TABLE LOJA_EDITORA(
    COD_EDITORA VARCHAR(10) NOT NULL, 
    COD_LOJA VARCHAR(10) NOT NULL,
    PRIMARY KEY (COD_EDITORA, COD_LOJA)
);
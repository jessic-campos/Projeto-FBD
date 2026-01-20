CREATE TABLE "instituicao"
(
  "id_instituicao" SERIAL PRIMARY KEY,
  "nome_oficial" VARCHAR(60) NOT NULL,
  "email" VARCHAR(50) NOT NULL UNIQUE,
  "cnpj" VARCHAR(14) NOT NULL UNIQUE,
  "cidade" VARCHAR(20) NOT NULL,
  "bairro" VARCHAR(20) NOT NULL,
  "numero" INT NOT NULL,
  "rua" VARCHAR(70) NOT NULL,
  "estado" VARCHAR(50) NOT NULL,
  "cep" INT NOT NULL
);

CREATE TABLE "empresa"
(
  "setor_atividade" VARCHAR(50) NOT NULL,
  "id_instituicao" INTEGER REFERENCES instituicao(id_instituicao)
);

CREATE TABLE "universidade"
(
  "credenciamento_mec" INT NOT NULL,
  "id_instituicao" INTEGER REFERENCES instituicao(id_instituicao)
);

CREATE TABLE "patente"
(
  "id_patente" SERIAL PRIMARY KEY,
  "nome" VARCHAR(50) NOT NULL UNIQUE,
  "numero_registro" INT NOT NULL UNIQUE,
  "data_submissao" DATE NOT NULL,
  "palavras_chaves" VARCHAR(150) NOT NULL,
  "resumo" VARCHAR(200) NOT NULL
);

CREATE TABLE "instituicao_patente"
(
  "id_patente" INTEGER REFERENCES patente(id_patente),
  "id_instituicao" INTEGER REFERENCES instituicao(id_instituicao),
  UNIQUE (id_patente, id_instituicao)
);

CREATE TABLE "status"
(
  "id_status" SERIAL PRIMARY KEY,
  "status_atual" VARCHAR(25) NOT NULL,
  "data" DATE NOT NULL,
  "id_patente" INTEGER REFERENCES patente(id_patente)
);

CREATE TABLE "classificacao"
(
  "id_classificacao" SERIAL PRIMARY KEY,
  "nome" VARCHAR(30) NOT NULL,
  "descricao" VARCHAR(250) NOT NULL
);

CREATE TABLE "patente_classificacao"
(
  "id_patente" INTEGER REFERENCES patente(id_patente),
  "id_classificacao" INTEGER REFERENCES classificacao(id_classificacao),
  UNIQUE (id_patente, id_classificacao)
);


CREATE TABLE "inventor" (
	"id_inventor" SERIAL PRIMARY KEY,
	"cpf" VARCHAR(11) NOT NULL UNIQUE,
	"email" VARCHAR(75) NOT NULL UNIQUE,
	"nome" VARCHAR(25) NOT NULL,
	"sobrenome" VARCHAR(25) NOT NULL
);

CREATE TABLE "inventor_patente"
(
  "id_inventor" INTEGER REFERENCES inventor(id_inventor),
  "id_patente" INTEGER REFERENCES patente(id_patente),
  UNIQUE (id_inventor, id_patente)
);

CREATE TABLE "especialidade" (
	"id_especialidade" SERIAL PRIMARY KEY,
	"especialidade" VARCHAR(40) NOT NULL UNIQUE
);

CREATE TABLE "inventor_especialidade" (
  "id_inventor" INTEGER REFERENCES inventor(id_inventor),
  "id_especialidade" INTEGER REFERENCES especialidade(id_especialidade),
  UNIQUE (id_inventor, id_especialidade)
);

CREATE TABLE "telefone" (
	"id_telefone" INT NOT NULL,
    "telefone" VARCHAR(20) NOT NULL,
 	"id_inventor" INTEGER REFERENCES inventor(id_inventor)	
);
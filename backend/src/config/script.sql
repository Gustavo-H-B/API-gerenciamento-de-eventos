DROP database gerenciador_eventos;
create database gerenciador_eventos;
use gerenciador_eventos;

CREATE TABLE locais (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(150) NOT NULL,
  endereco VARCHAR(300) NOT NULL,
  capacidade INT NOT NULL,
  cidade VARCHAR(150) NOT NULL
);

CREATE TABLE eventos (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(150) NOT NULL,
  descricao VARCHAR(300) NOT NULL,
  data_hora DATETIME NOT NULL,
  locais_id INT NOT NULL,
  FOREIGN KEY (locais_id) REFERENCES locais(id)
);

CREATE TABLE participantes(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nome_completo VARCHAR(150) NOT NULL,
  email VARCHAR(150) NOT NULL UNIQUE,
  telefone VARCHAR(15) NOT NULL UNIQUE
);

CREATE TABLE inscricoes (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  eventos_id INT NOT NULL,
  participantes_id INT NOT NULL,
  data DATE NOT NULL,
FOREIGN KEY (eventos_id) REFERENCES eventos (id),
FOREIGN KEY (participantes_id) REFERENCES participantes (id)
);
    
INSERT INTO eventos (nome, descricao, data_hora, locais_id)
values ("feira de salgados","barraquinhas de vendas de salgados","2026-10-10 08:00:00","1"),
("feira de doces","barraquinhas de vendas de doces","2026-10-10 18:00:00","2"),
("evento de rpg","várias mesas de rpgs","2026-10-10 21:00:00","3");

INSERT INTO locais (nome, endereco, capacidade, cidade)
values ("praca alimenticia soja", "rua pasteis fritas", 200, "salgadilandia"),
("praca alimenticia chocolate", "rua brigadeiro misto", 250, "mundo doce"),
("bunker", "rua d20 de sorte", 500, "mundo das trevas");

INSERT INTO participantes (nome_completo, email, telefone)
values ("batateman fritas", "fritas@hot", "(11) 00000-1111"),
("docil do mel", "mel@cold", "(88) 44444-8888"),
("mago supremo", "spamspell@nerd", "(20) 20201-2020");

INSERT INTO inscricoes (eventos_id, participantes_id, data)
values (1,1, "2026-10-10"),
(2,2, "2026-10-10"),
(3,3, "2026-10-10");
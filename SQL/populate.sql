-- Inserindo Instituições
INSERT INTO instituicao (id_instituicao, nome_oficial, email, cnpj, cidade, bairro, numero, rua, estado, cep) VALUES
(1, 'Instituto Tecnológico Alfa', 'contato@alfa.com', '12345678000111', 'Fortaleza', 'Centro', 100, 'Rua A', 'Ceara', 60000000),
(2, 'Centro de Pesquisa Beta', 'beta@pesquisa.com', '22345678000122', 'Recife', 'Boa Vista', 200, 'Rua B', 'Pernambuco', 50000000),
(3, 'Instituto Delta', 'delta@mail.com', '32345678000133', 'Natal', 'Petropolis', 300, 'Rua C', 'Rio Grande do Norte', 59000000),
(4, 'Laboratorio Gama', 'gama@lab.com', '42345678000144', 'Salvador', 'Barra', 400, 'Rua D', 'Bahia', 40000000),
(5, 'Instituto Sigma', 'sigma@inst.com', '52345678000155', 'Sao Paulo', 'Centro', 500, 'Rua E', 'Sao Paulo', 10000000),
(6, 'Tech Institute Zeta', 'zeta@tech.com', '62345678000166', 'Campinas', 'Taquaral', 600, 'Rua F', 'Sao Paulo', 13000000),
(7, 'Instituicao Omega', 'omega@org.com', '72345678000177', 'Fortaleza', 'Aldeota', 700, 'Rua G', 'Ceara', 60100000),
(8, 'Instituto Epsilon', 'epsilon@inst.com', '82345678000188', 'Rio de Janeiro', 'Copacabana', 800, 'Rua H', 'Rio de Janeiro', 22000000),
(9, 'Instituto Kappa', 'kappa@mail.com', '92345678000199', 'Curitiba', 'Centro', 900, 'Rua I', 'Parana', 80000000),
(10, 'Instituto Lambda', 'lambda@inst.com', '10345678000100', 'Manaus', 'Distrito Industrial', 50, 'Rua J', 'Amazonas', 69000000);

-- Inserindo Empresas
INSERT INTO empresa (setor_atividade, id_instituicao) VALUES
('Tecnologia', 1),
('Biotecnologia', 2),
('Aeronautica', 3),
('Robotica', 4),
('Farmaceutica', 5),
('Telecomunicacoes', 6),
('Energia', 7),
('Alimentos', 8),
('Metalurgia', 9),
('Automobilistica', 10);

-- Inserindo Universidades
INSERT INTO universidade (credenciamento_mec, id_instituicao) VALUES
(1111, 1),
(2222, 2),
(3333, 3),
(4444, 4),
(5555, 5),
(6666, 6),
(7777, 7),
(8888, 8),
(9999, 9),
(1010, 10);

-- Inserindo Inventores
INSERT INTO inventor (id_inventor, cpf, email, nome, sobrenome) VALUES
(1, '11111111111', 'a@a.com', 'Carlos', 'Silva'),
(2, '22222222222', 'b@b.com', 'Ana', 'Souza'),
(3, '33333333333', 'c@c.com', 'Paulo', 'Lima'),
(4, '44444444444', 'd@d.com', 'Maria', 'Oliveira'),
(5, '55555555555', 'e@e.com', 'Joao', 'Costa'),
(6, '66666666666', 'f@f.com', 'Beatriz', 'Alves'),
(7, '77777777777', 'g@g.com', 'Rafael', 'Dias'),
(8, '88888888888', 'h@h.com', 'Juliana', 'Moura'),
(9, '99999999999', 'i@i.com', 'Roberto', 'Nunes'),
(10, '10101010101', 'j@j.com', 'Larissa', 'Freitas');

-- Inserindo Especialidades
INSERT INTO especialidade (id_especialidade, especialidade) VALUES
(1, 'Robotica'),
(2, 'Inteligencia Artificial'),
(3, 'Mecanica'),
(4, 'Biotecnologia'),
(5, 'Eletronica'),
(6, 'Telecomunicacoes'),
(7, 'Engenharia Quimica'),
(8, 'Nanotecnologia'),
(9, 'Sistemas Embarcados'),
(10, 'Optica');

-- Inserindo relação Inventor-Especialidade
INSERT INTO inventor_especialidade (id_inventor, id_especialidade) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9),
(9, 10);

-- Inserindo Telefones
INSERT INTO telefone (id_telefone, telefone, id_inventor) VALUES
(1, '85990000001', 1),
(2, '85990000002', 2),
(3, '85990000003', 3),
(4, '85990000004', 4),
(5, '85990000005', 5),
(6, '85990000006', 6),
(7, '85990000007', 7),
(8, '85990000008', 8),
(9, '85990000009', 9),
(10, '85990000010', 10);

-- Inserindo Patentes
INSERT INTO patente (id_patente, nome, numero_registro, data_submissao, palavras_chaves, resumo) VALUES
(1, 'Sensor inteligente', 1001, '2023-01-01', 'sensor, IoT, inteligente', 'Sistema de sensoriamento inteligente com capacidade de processamento de dados em tempo real'),
(2, 'Drone maritimo', 1002, '2023-02-01', 'drone, maritimo, automacao', 'Veiculo aereo nao tripulado projetado para operacoes maritimas e monitoramento costeiro'),
(3, 'Braco robotico', 1003, '2023-03-01', 'mecanica, robotica, automacao', 'Braco robotico articulado com alta precisao para aplicacoes industriais'),
(4, 'Sistema biometrico', 1004, '2023-04-01', 'biometria, seguranca, identificacao', 'Sistema avancado de identificacao biometrica multimodal'),
(5, 'Protese avancada', 1005, '2023-05-01', 'protese, biomecanica, assistiva', 'Protese de membro superior com controle neural e feedback sensorial'),
(6, 'Filtro nanotecnologico', 1006, '2023-06-01', 'nano, filtragem, purificacao', 'Sistema de filtragem utilizando nanomateriais para purificacao de agua'),
(7, 'Motor eficiente', 1007, '2023-07-01', 'motor, eficiencia, energia', 'Motor eletrico de alta eficiencia energetica com design inovador'),
(8, 'Tinta solar', 1008, '2023-08-01', 'solar, fotovoltaica, energia', 'Revestimento fotovoltaico aplicavel em superficies diversas'),
(9, 'Veiculo autonomo', 1009, '2023-09-01', 'autonomo, IA, transporte', 'Sistema de navegacao autonoma para veiculos terrestres'),
(10, 'Exoesqueleto leve', 1010, '2023-10-01', 'exoesqueleto, biomecanica, assistiva', 'Estrutura de suporte corporal leve para amplificacao de forca');

-- Inserindo relação Inventor-Patente
INSERT INTO inventor_patente (id_inventor, id_patente) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(4, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9),
(9, 10);

-- Inserindo relação Instituição-Patente
INSERT INTO instituicao_patente (id_patente, id_instituicao) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- Inserindo Documentos
INSERT INTO documentos (id_documentos, documentos, id_patente) VALUES
(1, 'relatorio_tecnico_101.pdf', 1),
(2, 'especificacao_102.pdf', 2),
(3, 'desenhos_tecnicos_103.pdf', 3),
(4, 'analise_viabilidade_104.pdf', 4),
(5, 'testes_laboratorio_105.pdf', 5),
(6, 'caracterizacao_material_106.pdf', 6),
(7, 'simulacoes_computacionais_107.pdf', 7),
(8, 'ensaios_campo_108.pdf', 8),
(9, 'prototipo_109.pdf', 9),
(10, 'validacao_clinica_110.pdf', 10);

-- Inserindo Classificações
INSERT INTO classificacao (id_classificacao, nome, descricao) VALUES
(1, 'Dispositivos Eletronicos', 'Equipamentos e sistemas eletronicos para diversas aplicacoes tecnologicas'),
(2, 'Automacao', 'Sistemas e processos automatizados para industria e servicos'),
(3, 'Biotecnologia', 'Aplicacoes tecnologicas utilizando sistemas biologicos e organismos vivos'),
(4, 'IA Aplicada', 'Sistemas de inteligencia artificial aplicados a problemas praticos'),
(5, 'Robotica', 'Desenvolvimento de robos e sistemas roboticos autonomos ou controlados'),
(6, 'Nanotecnologia', 'Manipulacao de materia em escala nanometrica para aplicacoes diversas'),
(7, 'Engenharia Mecanica', 'Projetos e sistemas mecanicos para aplicacoes industriais'),
(8, 'Energias Renovaveis', 'Tecnologias para geracao e aproveitamento de energia sustentavel'),
(9, 'Transportes', 'Sistemas e tecnologias para mobilidade e transporte'),
(10, 'Assistiva', 'Tecnologias para auxilio e reabilitacao de pessoas com deficiencia');

-- Inserindo relação Patente-Classificação
INSERT INTO patente_classificacao (id_patente, id_classificacao) VALUES
(1, 1),
(2, 2),
(3, 5),
(4, 3),
(5, 10),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 5);

-- Inserindo Status
INSERT INTO status (id_status, status_atual, data, id_patente) VALUES
(1, 'Enviado', '2023-01-10', 1),
(2, 'Revisao', '2023-01-20', 1),
(3, 'Revisao', '2023-02-15', 2),
(4, 'Aprovado', '2023-02-25', 2),
(5, 'Aprovado', '2023-03-18', 3),
(6, 'Enviado', '2023-03-28', 4),
(7, 'Revisao', '2023-04-12', 5),
(8, 'Correcoes', '2023-04-22', 6),
(9, 'Aprovado', '2023-05-10', 7),
(10, 'Revisao', '2023-05-20', 8),
(11, 'Reprovado', '2023-05-25', 9),
(12, 'Aprovado', '2023-06-01', 10);

-- Limpa dados existentes (ordem correta para respeitar FKs)
DELETE FROM empresa;
DELETE FROM universidade;
DELETE FROM instituicao;

-- Reseta a sequência de auto-incremento
ALTER SEQUENCE instituicao_id_instituicao_seq RESTART WITH 1;

-- ========================================
-- UNIVERSIDADES (8 instituições)
-- ========================================

-- 1. Universidade Federal do Ceará
INSERT INTO instituicao (nome_oficial, email, cnpj, cidade, bairro, numero, rua, estado, cep)
VALUES ('Universidade Federal do Ceará', 'contato@ufc.br', '07705477000171', 'Fortaleza', 'Pici', 2853, 'Avenida Mister Hull', 'CE', '60440554')
RETURNING id_instituicao;

INSERT INTO universidade (credenciamento_mec, id_instituicao)
VALUES (1063, currval('instituicao_id_instituicao_seq'));

-- 2. Universidade de São Paulo
INSERT INTO instituicao (nome_oficial, email, cnpj, cidade, bairro, numero, rua, estado, cep)
VALUES ('Universidade de São Paulo', 'faleconosco@usp.br', '63025530000104', 'São Paulo', 'Butantã', 1000, 'Rua da Reitoria', 'SP', '05508900');

INSERT INTO universidade (credenciamento_mec, id_instituicao)
VALUES (1234, currval('instituicao_id_instituicao_seq'));

-- 3. Universidade Federal do Rio de Janeiro
INSERT INTO instituicao (nome_oficial, email, cnpj, cidade, bairro, numero, rua, estado, cep)
VALUES ('Universidade Federal do Rio de Janeiro', 'info@ufrj.br', '33663683000106', 'Rio de Janeiro', 'Cidade Universitária', 149, 'Avenida Pedro Calmon', 'RJ', '21941901');

INSERT INTO universidade (credenciamento_mec, id_instituicao)
VALUES (1567, currval('instituicao_id_instituicao_seq'));

-- 4. Universidade Federal de Minas Gerais
INSERT INTO instituicao (nome_oficial, email, cnpj, cidade, bairro, numero, rua, estado, cep)
VALUES ('Universidade Federal de Minas Gerais', 'atendimento@ufmg.br', '17217985000104', 'Belo Horizonte', 'Pampulha', 6627, 'Avenida Antônio Carlos', 'MG', '31270901');

INSERT INTO universidade (credenciamento_mec, id_instituicao)
VALUES (1890, currval('instituicao_id_instituicao_seq'));

-- 5. Universidade Estadual de Campinas
INSERT INTO instituicao (nome_oficial, email, cnpj, cidade, bairro, numero, rua, estado, cep)
VALUES ('Universidade Estadual de Campinas', 'contato@unicamp.br', '46068425000133', 'Campinas', 'Barão Geraldo', 1000, 'Rua Cândido Portinari', 'SP', '13083872');

INSERT INTO universidade (credenciamento_mec, id_instituicao)
VALUES (2145, currval('instituicao_id_instituicao_seq'));

-- 6. Universidade de Brasília
INSERT INTO instituicao (nome_oficial, email, cnpj, cidade, bairro, numero, rua, estado, cep)
VALUES ('Universidade de Brasília', 'ouvidoria@unb.br', '00038174000143', 'Brasília', 'Asa Norte', 1, 'Campus Universitário Darcy Ribeiro', 'DF', '70910900');

INSERT INTO universidade (credenciamento_mec, id_instituicao)
VALUES (2478, currval('instituicao_id_instituicao_seq'));

-- 7. Pontifícia Universidade Católica do Rio de Janeiro
INSERT INTO instituicao (nome_oficial, email, cnpj, cidade, bairro, numero, rua, estado, cep)
VALUES ('Pontifícia Universidade Católica do RJ', 'central@puc-rio.br', '33555921000186', 'Rio de Janeiro', 'Gávea', 225, 'Rua Marquês de São Vicente', 'RJ', '22451900');

INSERT INTO universidade (credenciamento_mec, id_instituicao)
VALUES (2801, currval('instituicao_id_instituicao_seq'));

-- 8. Universidade Federal do Paraná
INSERT INTO instituicao (nome_oficial, email, cnpj, cidade, bairro, numero, rua, estado, cep)
VALUES ('Universidade Federal do Paraná', 'protocolo@ufpr.br', '75095679000143', 'Curitiba', 'Centro', 100, 'Rua XV de Novembro', 'PR', '80060000');

INSERT INTO universidade (credenciamento_mec, id_instituicao)
VALUES (3124, currval('instituicao_id_instituicao_seq'));

-- ========================================
-- EMPRESAS - TECNOLOGIA (5 instituições)
-- ========================================

-- 9. Empresa de Software em Fortaleza
INSERT INTO instituicao (nome_oficial, email, cnpj, cidade, bairro, numero, rua, estado, cep)
VALUES ('TechFortal Soluções em TI Ltda', 'contato@techfortal.com.br', '12345678000190', 'Fortaleza', 'Aldeota', 456, 'Rua Santos Dumont', 'CE', '60150160');

INSERT INTO empresa (setor_atividade, id_instituicao)
VALUES ('Tecnologia da Informação', currval('instituicao_id_instituicao_seq'));

-- 10. Startup de IA em São Paulo
INSERT INTO instituicao (nome_oficial, email, cnpj, cidade, bairro, numero, rua, estado, cep)
VALUES ('BrasilIA Inteligência Artificial S.A.', 'hello@brasilia.tech', '23456789000101', 'São Paulo', 'Vila Olímpia', 789, 'Rua Funchal', 'SP', '04551060');

INSERT INTO empresa (setor_atividade, id_instituicao)
VALUES ('Inteligência Artificial e Machine Learning', currval('instituicao_id_instituicao_seq'));

-- 11. Empresa de Desenvolvimento Web no Rio
INSERT INTO instituicao (nome_oficial, email, cnpj, cidade, bairro, numero, rua, estado, cep)
VALUES ('WebRio Desenvolvimento Digital Ltda', 'comercial@webrio.com', '34567890000112', 'Rio de Janeiro', 'Botafogo', 321, 'Rua Voluntários da Pátria', 'RJ', '22270000');

INSERT INTO empresa (setor_atividade, id_instituicao)
VALUES ('Desenvolvimento Web e Mobile', currval('instituicao_id_instituicao_seq'));

-- 12. Empresa de Cibersegurança
INSERT INTO instituicao (nome_oficial, email, cnpj, cidade, bairro, numero, rua, estado, cep)
VALUES ('CyberShield Segurança Digital Ltda', 'security@cybershield.com.br', '45678901000123', 'Belo Horizonte', 'Savassi', 550, 'Rua Pernambuco', 'MG', '30130150');

INSERT INTO empresa (setor_atividade, id_instituicao)
VALUES ('Cibersegurança e Proteção de Dados', currval('instituicao_id_instituicao_seq'));

-- 13. Empresa de Cloud Computing
INSERT INTO instituicao (nome_oficial, email, cnpj, cidade, bairro, numero, rua, estado, cep)
VALUES ('CloudBrasil Serviços em Nuvem S.A.', 'suporte@cloudbrasil.com.br', '56789012000134', 'Campinas', 'Techno Park', 1200, 'Avenida José Rocha Brito', 'SP', '13069330');

INSERT INTO empresa (setor_atividade, id_instituicao)
VALUES ('Cloud Computing e Infraestrutura', currval('instituicao_id_instituicao_seq'));

-- ========================================
-- EMPRESAS - OUTROS SETORES (5 instituições)
-- ========================================

-- 14. Indústria Farmacêutica
INSERT INTO instituicao (nome_oficial, email, cnpj, cidade, bairro, numero, rua, estado, cep)
VALUES ('Farmacêutica BioMed do Brasil S.A.', 'sac@biomedbrasil.com.br', '67890123000145', 'São Paulo', 'Vila Mariana', 890, 'Rua Domingos de Morais', 'SP', '04010100');

INSERT INTO empresa (setor_atividade, id_instituicao)
VALUES ('Indústria Farmacêutica', currval('instituicao_id_instituicao_seq'));

-- 15. Consultoria Empresarial
INSERT INTO instituicao (nome_oficial, email, cnpj, cidade, bairro, numero, rua, estado, cep)
VALUES ('Consultoria Estratégica Nordeste Ltda', 'atendimento@cenordeste.com.br', '78901234000156', 'Fortaleza', 'Meireles', 2100, 'Avenida Beira Mar', 'CE', '60165121');

INSERT INTO empresa (setor_atividade, id_instituicao)
VALUES ('Consultoria Empresarial e Gestão', currval('instituicao_id_instituicao_seq'));

-- 16. Empresa de Logística
INSERT INTO instituicao (nome_oficial, email, cnpj, cidade, bairro, numero, rua, estado, cep)
VALUES ('LogiBrasil Transportes e Logística S.A.', 'operacoes@logibrasil.com.br', '89012345000167', 'Curitiba', 'CIC', 3400, 'Avenida das Torres', 'PR', '81170230');

INSERT INTO empresa (setor_atividade, id_instituicao)
VALUES ('Logística e Transporte', currval('instituicao_id_instituicao_seq'));

-- 17. Empresa de Energia Renovável
INSERT INTO instituicao (nome_oficial, email, cnpj, cidade, bairro, numero, rua, estado, cep)
VALUES ('EcoEnergia Soluções Sustentáveis Ltda', 'contato@ecoenergia.com.br', '90123456000178', 'Brasília', 'Asa Sul', 205, 'SCS Quadra 2 Bloco A', 'DF', '70300902');

INSERT INTO empresa (setor_atividade, id_instituicao)
VALUES ('Energia Renovável e Sustentabilidade', currval('instituicao_id_instituicao_seq'));

-- 18. Empresa de Construção Civil
INSERT INTO instituicao (nome_oficial, email, cnpj, cidade, bairro, numero, rua, estado, cep)
VALUES ('Construtora Paraná Engenharia S.A.', 'obras@construtorpr.com.br', '01234567000189', 'Curitiba', 'Batel', 1750, 'Avenida do Batel', 'PR', '80420090');

INSERT INTO empresa (setor_atividade, id_instituicao)
VALUES ('Construção Civil e Engenharia', currval('instituicao_id_instituicao_seq'));

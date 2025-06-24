CREATE DATABASE IF NOT EXISTS ficha_acolhimento_prisional;

USE ficha_acolhimento_prisional;

CREATE TABLE IF NOT EXISTS ficha_acolhimento (
    id INT AUTO_INCREMENT PRIMARY KEY,
    -- Seção de Atendimento
    responsavel_pelo_atendimento VARCHAR(255),
    data_atendimento DATE,
    horario_atendimento TIME,
    data_entrada_na_unidade DATE,
    transferencia_outra_unidade BOOLEAN,
    qual_procedencia_transferencia TEXT,

    -- Seção de Identificação
    nome_completo VARCHAR(255),
    nome_social VARCHAR(255),
    data_nascimento DATE,
    idade INT,
    cpf VARCHAR(14) UNIQUE,
    rg VARCHAR(20),
    cns VARCHAR(20),
    municipio_nascimento VARCHAR(100),
    uf_nascimento VARCHAR(2),
    nacionalidade ENUM('Brasileira', 'Naturalizado', 'Estrangeiro'),
    qual_nacionalidade_estrangeiro VARCHAR(100), -- Somente se estrangeiro
    nome_mae VARCHAR(255),
    nome_pai VARCHAR(255),
    nome_pai_desconhecido BOOLEAN,
    estado_civil ENUM('Solteiro', 'Casado', 'União Estável', 'Outro'),
    qual_outro_estado_civil VARCHAR(100), -- Somente se outro
    endereco_rua VARCHAR(255),
    endereco_numero VARCHAR(50),
    endereco_bairro VARCHAR(100),
    endereco_cidade VARCHAR(100),
    zona ENUM('Zona Rural', 'Zona Urbana'),
    situacao_rua BOOLEAN, -- Sim/Não
    qual_municipio_situacao_rua VARCHAR(100),

    -- Seção Raça/cor (Autodeclarada)
    raca_cor ENUM('Branco', 'Preto', 'Pardo', 'Amarelo', 'Indígena', 'Não desejo informar'),
    qual_etnia_indigena VARCHAR(100), -- Somente se Indígena

    -- Seçãficha_acolhimentoficha_acolhimentoo Sexo Biológico (Autodeclarado)
    sexo_biologico ENUM('Feminino', 'Masculino', 'Intersexo', 'Não desejo informar'),

    -- Seção Identidade de Gênero (Autodeclarada)
    identidade_genero ENUM('Homem', 'Mulher', 'Homem trans', 'Mulher trans/Travesti', 'Não binário', 'Não desejo informar'),

    -- Seção Orientação sexual (Autodeclarada)
    orientacao_sexual ENUM('Heterossexual', 'Homossexual(gay/lésbica)', 'Bissexual', 'Outra. Qual?', 'Não desejo informar'),
    qual_outra_orientacao_sexual VARCHAR(100) -- Somente se Outra. Qual?
);

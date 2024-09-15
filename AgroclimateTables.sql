--Criação de tabelas

CREATE TABLE Agricultor (
   id_agricultor INT PRIMARY KEY,
   nome_agricultor VARCHAR(255),
   cpf VARCHAR(11)
);

CREATE TABLE Fazenda (
   id_fazenda INT PRIMARY KEY,
   nome_fazenda VARCHAR(255),
   cnpj_fazenda VARCHAR(14),
   email VARCHAR(255),
   telefone VARCHAR(11),
   cep VARCHAR(8),
   id_agricultor INT,
   CONSTRAINT fk_agricultor FOREIGN KEY (id_agricultor) REFERENCES Agricultor(id_agricultor)
);

CREATE TABLE Solo (
   id_solo INT PRIMARY KEY,
   id_fazenda INT,
   nome_solo VARCHAR(255),
   tipo_solo VARCHAR(50),
   ph_solo FLOAT,
   nutrientes_solo VARCHAR(255),
   CONSTRAINT fk_fazenda_solo FOREIGN KEY (id_fazenda) REFERENCES Fazenda(id_fazenda)
);

CREATE TABLE Plantacao (
   id_plantacao INT PRIMARY KEY,
   id_solo INT,
   data_plantacao DATE,
   area_plantacao VARCHAR(20),
   CONSTRAINT fk_solo_plantacao FOREIGN KEY (id_solo) REFERENCES Solo(id_solo)
);


--selects
select * from Agricultor;
select * from Plantacao;
select * from Fazenda;
select * from Solo;


--Insert
INSERT INTO Agricultor (id_agricultor, nome_agricultor, cpf)
VALUES 
(1, 'João Silva', '12345678901'),
(2, 'Maria Oliveira', '09876543210'),
(3, 'Pedro Almeida', '11122233344'),
(4, 'Ana Santos', '55566677788'),
(5, 'Carlos Pereira', '99988877766');



INSERT INTO Fazenda (id_fazenda, nome_fazenda, cnpj_fazenda, email, telefone, cep, id_agricultor)
VALUES 
(1, 'Fazenda Boa Vista', '12345678000199', 'fazenda1@example.com', '11987654321', '12345678', 1),
(2, 'Fazenda Santa Luzia', '98765432000188', 'fazenda2@example.com', '11987654322', '87654321', 2),
(3, 'Fazenda São Jorge', '11122233000177', 'fazenda3@example.com', '11987654323', '23456789', 3),
(4, 'Fazenda Primavera', '44455566000166', 'fazenda4@example.com', '11987654324', '34567890', 4),
(5, 'Fazenda Nova Esperança', '66677788000155', 'fazenda5@example.com', '11987654325', '45678901', 5);




INSERT INTO Solo (id_solo, id_fazenda, nome_solo, tipo_solo, ph_solo, nutrientes_solo)
VALUES 
(1, 1, 'Solo Argiloso', 'Argila', 6.5, 'Nitrogênio, Fósforo, Potássio'),
(2, 2, 'Solo Arenoso', 'Areia', 5.8, 'Potássio, Magnésio, Cálcio'),
(3, 3, 'Solo Siltoso', 'Silt', 6.2, 'Nitrogênio, Cálcio'),
(4, 4, 'Solo Calcário', 'Calcário', 7.0, 'Fósforo, Magnésio'),
(5, 5, 'Solo Orgânico', 'Orgânico', 6.8, 'Nitrogênio, Potássio, Cálcio');



INSERT INTO Plantacao (id_plantacao, id_solo, data_plantacao, area_plantacao)
VALUES 
(1, 1, '2024-01-15', '10 hectares'),
(2, 2, '2024-02-20', '15 hectares'),
(3, 3, '2024-03-10', '20 hectares'),
(4, 4, '2024-04-05', '25 hectares'),
(5, 5, '2024-05-25', '30 hectares');


--Update

UPDATE Agricultor
SET nome_agricultor = 'João dos Santos', cpf = '11122334455'
WHERE id_agricultor = 1;

UPDATE Agricultor
SET nome_agricultor = 'Maria de Souza', cpf = '66677788899'
WHERE id_agricultor = 2;

UPDATE Agricultor
SET nome_agricultor = 'Pedro de Oliveira', cpf = '00011122233'
WHERE id_agricultor = 3;

UPDATE Agricultor
SET nome_agricultor = 'Ana Beatriz', cpf = '44455566677'
WHERE id_agricultor = 4;

UPDATE Agricultor
SET nome_agricultor = 'Carlos Eduardo', cpf = '99900011122'
WHERE id_agricultor = 5;




UPDATE Fazenda
SET nome_fazenda = 'Fazenda Vale Verde', cnpj_fazenda = '12345678000101', email = 'fazenda6@example.com', telefone = '11988776655', cep = '12345679'
WHERE id_fazenda = 1;

UPDATE Fazenda
SET nome_fazenda = 'Fazenda Estrela', cnpj_fazenda = '98765432000102', email = 'fazenda7@example.com', telefone = '11988776656', cep = '23456780'
WHERE id_fazenda = 2;

UPDATE Fazenda
SET nome_fazenda = 'Fazenda Horizonte', cnpj_fazenda = '11122233000103', email = 'fazenda8@example.com', telefone = '11988776657', cep = '34567891'
WHERE id_fazenda = 3;

UPDATE Fazenda
SET nome_fazenda = 'Fazenda Campos', cnpj_fazenda = '44455566000104', email = 'fazenda9@example.com', telefone = '11988776658', cep = '45678901'
WHERE id_fazenda = 4;

UPDATE Fazenda
SET nome_fazenda = 'Fazenda Colina', cnpj_fazenda = '66677788000105', email = 'fazenda10@example.com', telefone = '11988776659', cep = '56789012'
WHERE id_fazenda = 5;




UPDATE Solo
SET nome_solo = 'Solo Argiloso Rico', tipo_solo = 'Argila', ph_solo = 6.8, nutrientes_solo = 'Nitrogênio, Potássio, Fósforo'
WHERE id_solo = 1;

UPDATE Solo
SET nome_solo = 'Solo Arenoso Modificado', tipo_solo = 'Areia/Argila', ph_solo = 6.0, nutrientes_solo = 'Potássio, Magnésio, Nitrogênio'
WHERE id_solo = 2;

UPDATE Solo
SET nome_solo = 'Solo Siltoso Enriquecido', tipo_solo = 'Silt', ph_solo = 6.5, nutrientes_solo = 'Nitrogênio, Fósforo, Magnésio'
WHERE id_solo = 3;

UPDATE Solo
SET nome_solo = 'Solo Calcário Fértil', tipo_solo = 'Calcário', ph_solo = 7.2, nutrientes_solo = 'Fósforo, Cálcio, Potássio'
WHERE id_solo = 4;

UPDATE Solo
SET nome_solo = 'Solo Orgânico Melhorado', tipo_solo = 'Orgânico', ph_solo = 7.0, nutrientes_solo = 'Nitrogênio, Potássio, Magnésio'
WHERE id_solo = 5;



UPDATE Plantacao
SET data_plantacao = '2024-06-01', area_plantacao = '12 hectares'
WHERE id_plantacao = 1;

UPDATE Plantacao
SET data_plantacao = '2024-07-01', area_plantacao = '18 hectares'
WHERE id_plantacao = 2;

UPDATE Plantacao
SET data_plantacao = '2024-08-01', area_plantacao = '22 hectares'
WHERE id_plantacao = 3;

UPDATE Plantacao
SET data_plantacao = '2024-09-01', area_plantacao = '28 hectares'
WHERE id_plantacao = 4;

UPDATE Plantacao
SET data_plantacao = '2024-10-01', area_plantacao = '35 hectares'
WHERE id_plantacao = 5;


--Delete


DELETE FROM Plantacao WHERE id_plantacao IN (1, 2, 3, 4, 5);

DELETE FROM Solo WHERE id_solo IN (1, 2, 3, 4, 5);

DELETE FROM Fazenda WHERE id_fazenda IN (1, 2, 3, 4, 5);

DELETE FROM Agricultor WHERE id_agricultor IN (1, 2, 3, 4, 5);






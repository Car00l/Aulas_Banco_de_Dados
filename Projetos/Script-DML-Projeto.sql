INSERT INTO engenheiro (nome, atuacao, cidade, uf, sexo, eng_id)
VALUES ( 'Joao', 'civil', 'Lins','SP', 'M', 123),
( 'Maria', 'eletrica', 'Cafelandia','SP', 'F', 321),
( 'Jose', 'hidraulica', 'Lins','SP', 'M', 456),
( 'Paula', 'civil', 'Lins','SP', 'F', 654),
( 'Ricardo', 'civil', 'Cafelandia','SP', 'M', 789),
( 'Moisés', 'eletrica', 'Lins','SP', 'M', 987),
( 'Lissandra', 'hidraulica', 'Lins','SP', 'F', 897),
( 'Carla', 'eletrica', 'Lins','SP', 'F', 898);

INSERT INTO projeto ( nome, cidade, uf, projeto_id, eng_id)
VALUES ('Residencial', 'Lins', 'SP', 100, 123),
('Comercial', 'Lins', 'SP', 101, 123),
('Predio', 'Lins', 'SP', 102, 987),
('Residencial', 'Cafelandia', 'SP', 103, 321),
('Residencial', 'Cafelandia', 'SP', 104, 897),
('Comercial', 'Cafelandia', 'SP', 105, 987),
('Comercial', 'Fortaleza', 'CE', 106, 654);


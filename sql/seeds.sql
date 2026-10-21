INSERT INTO categorias (nome) VALUES
('Cabelo'), ('Barba'), ('Combos'), ('Tratamentos'), ('Infantil');

INSERT INTO servicos (nome, descricao, preco, duracao_min, categoria_id) VALUES
('Corte Social',       'Corte clássico na tesoura e máquina.',          45.00, 40, 1),
('Degradê',            'Degradê navalhado nas laterais.',               50.00, 45, 1),
('Barba Completa',     'Modelagem com toalha quente e navalha.',        35.00, 30, 2),
('Pezinho e Contorno', 'Acabamento de nuca e costeletas.',              15.00, 15, 2),
('Cabelo + Barba',     'Corte à escolha e barba completa.',             75.00, 70, 3),
('Hidratação Capilar', 'Hidratação com massagem no couro cabeludo.',    30.00, 25, 4),
('Corte Infantil',     'Corte para crianças até 12 anos.',              35.00, 30, 5);

INSERT INTO barbeiros (nome, especialidade) VALUES
('Rafael Souza',   'Degradê e cortes modernos'),
('Marcos Lima',    'Barba e navalha'),
('Thiago Ramos',   'Cortes clássicos'),
('Lucas Ferreira', 'Público infantil'),
('André Costa',    'Tratamentos');

INSERT INTO barbeiro_servico (barbeiro_id, servico_id) VALUES
(1, 1), (1, 2), (1, 5),
(2, 3), (2, 4), (2, 5),
(3, 1), (3, 5),
(4, 7),
(5, 6);
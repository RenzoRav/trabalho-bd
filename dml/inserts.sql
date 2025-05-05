--Inserir nome, email e telefone dos clientes
INSERT INTO cliente (nome, email, telefone) VALUES
('Ana Souza', 'ana.souza@email.com', '99999-1111'),
('Carlos Pereira', 'carlos.p@email.com', '98888-2222'),
('Fernanda Lima', 'fernanda.lima@email.com', '97777-3333'),
('João Oliveira', 'joao.oliveira@email.com', '96666-4444'),
('Beatriz Costa', 'beatriz.costa@email.com', '95555-5555'),
('Paulo Mendes', 'paulo.mendes@email.com', '94444-6666'),
('Mariana Silva', 'mariana.silva@email.com', '93333-7777'),
('Pedro Rocha', 'pedro.rocha@email.com', '92222-8888'),
('Luciana Castro', 'luciana.castro@email.com', '91111-9999'),
('Gabriel Santos', 'gabriel.santos@email.com', '90000-0000');

--Inserir Produtos
INSERT INTO produto (nome, preco, estoque) VALUES
('Notebook Lenovo', 3500.00, 15),
('Mouse Gamer', 150.00, 40),
('Teclado Mecânico', 300.00, 30),
('Monitor 24 Pol.', 1200.00, 20),
('Headset Bluetooth', 250.00, 25),
('Webcam Full HD', 400.00, 18),
('Cadeira Gamer', 950.00, 12),
('Fonte 600W', 320.00, 17),
('Placa de Vídeo GTX 1660', 1800.00, 10),
('HD Externo 1TB', 500.00, 22);

--Inserir Formas de Pagamento
INSERT INTO forma_pagamento (descricao) VALUES
('Cartão de Crédito'),
('Cartão de Débito'),
('Pix'),
('Boleto Bancário'),
('Transferência Bancária'),
('Dinheiro'),
('PayPal'),
('Vale Presente'),
('PicPay'),
('Crédito em Loja');

--Inserir Pedidos
INSERT INTO pedido (id_cliente, id_forma, data_pedido, total) VALUES
(1, 3, '2024-05-01', 5000.00),
(2, 1, '2024-05-02', 950.00),
(3, 2, '2024-05-03', 1200.00),
(4, 5, '2024-05-04', 400.00),
(5, 3, '2024-05-05', 300.00),
(6, 5, '2024-05-06', 2700.00),
(7, 1, '2024-05-07', 1800.00),
(8, 6, '2024-05-08', 800.00),
(9, 9, '2024-05-09', 500.00),
(10, 3, '2024-05-10', 3500.00);

--Inserir Itens de Pedido
INSERT INTO item_pedido (id_pedido, id_produto, quantidade, preco_unitario) VALUES
(1, 1, 1, 3500.00),
(1, 4, 1, 1200.00),
(2, 7, 1, 950.00),
(3, 4, 1, 1200.00),
(4, 6, 1, 400.00),
(5, 3, 1, 300.00),
(6, 9, 1, 1800.00),
(6, 8, 1, 320.00),
(7, 9, 1, 1800.00),
(8, 2, 2, 150.00);
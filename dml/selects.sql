--Clientes que começam com 'M'
SELECT nome
FROM cliente
WHERE nome LIKE 'M%';

--Produtos com preço maior que 500
SELECT nome, preco
FROM produto
WHERE preco > 500
ORDER BY preco DESC;

--Pedidos feitos via Pix
SELECT p.id_pedido, f.descricao
FROM pedido p
JOIN forma_pagamento f ON p.id_forma = f.id_forma
WHERE f.descricao = 'Pix';

--Nome dos clientes e total gasto
SELECT c.nome, SUM(p.total) AS total_gasto
FROM cliente c
JOIN pedido p ON c.id_cliente = p.id_cliente
GROUP BY c.nome;

--Quantidade total de pedidos
SELECT COUNT(*) AS total_pedidos
FROM pedido;

--Produtos com estoque entre 10 e 20
SELECT nome, estoque
FROM produto
WHERE estoque BETWEEN 10 AND 20;

--Pedidos feitos após 05/05/2024
SELECT id_pedido, data_pedido
FROM pedido
WHERE data_pedido > '2024-05-05';

--Total de itens vendidos por produto
SELECT pr.nome, SUM(ip.quantidade) AS total_vendido
FROM item_pedido ip
JOIN produto pr ON ip.id_produto = pr.id_produto
GROUP BY pr.nome
HAVING SUM(ip.quantidade) > 1;

--Formas de pagamento usadas
SELECT DISTINCT f.descricao
FROM pedido p
JOIN forma_pagamento f ON p.id_forma = f.id_forma;

--Quantidade de itens por pedido
SELECT p.id_pedido, COUNT(ip.id_item) AS quantidade_itens
FROM pedido p
JOIN item_pedido ip ON p.id_pedido = ip.id_pedido
GROUP BY p.id_pedido;
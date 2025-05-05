--Excluir cliente que não fez pedido
DELETE FROM cliente
WHERE id_cliente = 10;

--Excluir produto que não foi vendido
DELETE FROM produto
WHERE id_produto = 10;
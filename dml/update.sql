-- Atualizar telefone do cliente Carlos
UPDATE cliente
SET telefone = '98888-9999'
WHERE nome = 'Carlos Pereira';

-- Atualizar produto
UPDATE produto
SET estoque = estoque - 2
WHERE nome = 'Notebook Lenovo';

-- Atualizar total do pedido
UPDATE pedido
SET total = 2000.00
WHERE id_pedido = 2;
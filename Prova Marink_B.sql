SELECT 
    p.nome AS nome_produto, 
    pp.quantidade AS quantidade_consumida,
    m.numero AS numero_mesa
FROM 
    Mesa m
JOIN 
    Pedido pd ON m.numero = pd.mesa_numero
JOIN 
    Pedido_Produto pp ON pd.id = pp.pedido_id
JOIN 
    Produto p ON pp.produto_codigo = p.codigo
WHERE 
    m.numero = 1; 

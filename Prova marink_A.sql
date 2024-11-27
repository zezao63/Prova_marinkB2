SELECT 
    f.nome AS nome_funcionario, 
    m.numero AS numero_mesa, 
    SUM(v.valor_total) AS total_gasto
FROM 
    Funcionario f
JOIN 
    Atendimento a ON f.id = a.funcionario_id
JOIN 
    Mesa m ON a.mesa_numero = m.numero
JOIN 
    Venda v ON m.numero = v.mesa_numero
GROUP BY 
    f.nome, m.numero
ORDER BY 
    f.nome, m.numero; 

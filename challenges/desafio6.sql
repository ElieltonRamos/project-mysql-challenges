SELECT 
    REPLACE(FORMAT(MIN(t1.subscription_value), 2), '"', '') AS faturamento_minimo,
    REPLACE(MAX(t1.subscription_value), '"', '') AS faturamento_maximo,
    REPLACE(ROUND(AVG(subscription_value), 2), '"', '') AS faturamento_medio,
    REPLACE(ROUND(SUM(subscription_value), 2), '"', '') AS faturamento_total
FROM
    subscription_model AS t1
        INNER JOIN
    users AS t2 ON t1.signature_id = t2.signature_id;
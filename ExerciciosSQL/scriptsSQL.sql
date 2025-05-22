/* Select de cobranças (payment) com valor maior que R$ 1.000,00 */
SELECT id, date_created, status, value
FROM payment
WHERE value > 1000;

/* Soma dos valores de cobranças recebidas com a data de criação maior que 2020, agrupadas por tipo de cobrança (billing_type) */
SELECT billing_type, SUM(value) AS total_received_after_2020
FROM payment
WHERE date_created > '2021-01-01 00:00:00'
GROUP BY billing_type;

/* Lista de 20 pagadores (customer_account) com valores recebidos maiores que R$ 1.000,00 */
SELECT DISTINCT c.name
FROM customer_account c
JOIN payment p
ON p.customer_account_id = c.id
WHERE p.value > 1000 AND p.payment_date IS NOT NULL
LIMIT 20;

/* Primeiro nome dos clientes (customer) com análise geral aprovada (customer_regiter_status), ordenado por data de aprovação */
SELECT SUBSTRING_INDEX(name, ' ', 1) AS name, cr.general_approval, cr.last_updated
FROM customer
JOIN customer_register_status cr
ON customer.id = cr.customer_id
WHERE cr.general_approval = 'APPROVED'
ORDER BY cr.last_updated
	

SELECT 
    c.company_name,
    COUNT(t.transaction_id) AS total_invoices,
    SUM(t.amount_gross) AS total_gross_amount
FROM contractors c
JOIN transactions t ON c.contractor_id = t.contractor_id
GROUP BY c.company_name
ORDER BY total_gross_amount DESC;

SELECT 
    c.company_name,
    t.invoice_number,
    t.amount_gross,
    ROW_NUMBER() OVER (PARTITION BY c.contractor_id ORDER BY t.amount_gross DESC) AS transaction_rank
FROM contractors c
JOIN transactions t ON c.contractor_id = t.contractor_id;
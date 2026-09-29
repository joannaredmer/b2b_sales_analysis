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

SELECT 
    contractor_name AS "Klient / Kontrahent", 
    COUNT(order_id) AS "Liczba zamówień", 
    SUM(total_amount) AS "Łączna kwota (PLN)"
FROM orders
GROUP BY contractor_name;

SELECT 
    part_name AS "Nazwa części", 
    category AS "Kategoria", 
    stock_quantity AS "Dostępna ilość", 
    unit_price AS "Cena jednostkowa (PLN)"
FROM parts_inventory;
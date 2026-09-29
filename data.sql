INSERT INTO contractors (contractor_id, company_name, tax_id, created_date) VALUES
(1, 'Tech Solutions Sp. z o.o.', '1234567890', '2025-01-15'),
(2, 'Logistyka Polska S.A.', '9876543210', '2025-02-10'),
(3, 'Auto Service Max', '5556667788', '2025-03-01');

INSERT INTO transactions (transaction_id, contractor_id, invoice_number, amount_net, amount_gross, transaction_date) VALUES
(1, 1, 'FV/2025/01/01', 5000.00, 6150.00, '2025-01-20'),
(2, 1, 'FV/2025/02/05', 12000.00, 14760.00, '2025-02-10'),
(3, 2, 'FV/2025/02/12', 3500.00, 4305.00, '2025-02-12'),
(4, 3, 'FV/2025/03/02', 8000.00, 9840.00, '2025-03-05'),
(5, 2, 'FV/2025/03/15', 15000.00, 18450.00, '2025-03-18');
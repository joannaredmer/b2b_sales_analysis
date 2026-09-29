CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    contractor_id INT NOT NULL,
    invoice_number VARCHAR(50) UNIQUE NOT NULL,
    amount_net DECIMAL(12,2) NOT NULL,
    amount_gross DECIMAL(12,2) NOT NULL,
    transaction_date DATE NOT NULL,
    FOREIGN KEY (contractor_id) REFERENCES contractors(contractor_id)
);
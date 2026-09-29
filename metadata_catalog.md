# Słownik Danych (Metadata Catalog) – B2B Sales Analysis

Niniejszy dokument definiuje strukturę oraz słownik pojęć biznesowych dla relacyjnej bazy danych obsługującej transakcje i kontrahentów B2B.

## 1. Tabela: `contractors` (Kontrahenci)
Przechowuje informacje o firmach partnerskich i klientach B2B.

| Nazwa kolumny | Typ danych | Klucz / Ograniczenia | Opis biznesowy i definicja |
| :--- | :--- | :--- | :--- |
| `id` | INTEGER | PRIMARY KEY | Unikalny identyfikator kontrahenta w systemie. |
| `company_name` | TEXT | NOT NULL | Pełna nazwa firmy / nazwa handlowa kontrahenta. |
| `nip` | TEXT | UNIQUE, NOT NULL | Numer Identyfikacji Podatkowej (NIP) – unikalny identyfikator firmowy. |
| `status` | TEXT | CHECK (status IN ('Aktywny', 'Nieaktywny')) | Aktualny status handlowy kontrahenta w systemie. |
| `created_at` | TIMESTAMP | DEFAULT CURRENT_TIMESTAMP | Data i czas rejestracji kontrahenta w bazie. |

---

## 2. Tabela: `transactions` (Transakcje / Faktury)
Przechowuje rejestr wystawionych dokumentów sprzedaży i transakcji B2B.

| Nazwa kolumny | Typ danych | Klucz / Ograniczenia | Opis biznesowy i definicja |
| :--- | :--- | :--- | :--- |
| `id` | INTEGER | PRIMARY KEY | Unikalny identyfikator transakcji. |
| `contractor_id` | INTEGER | FOREIGN KEY (`contractors(id)`) | Powiązanie z kontrahentem, który dokonał zakupu. |
| `invoice_number` | TEXT | UNIQUE, NOT NULL | Unikalny numer faktury / dokumentu sprzedaży. |
| `net_amount` | REAL | NOT NULL, CHECK (net_amount >= 0) | Wartość netto transakcji (w PLN). |
| `tax_rate` | REAL | DEFAULT 0.23 | Stawka podatku VAT (domyślnie 23%). |
| `transaction_date`| DATE | NOT NULL | Data zaksięgowania / wystawienia transakcji. |
| `payment_status` | TEXT | CHECK (payment_status IN ('Opłacona', 'Oczekująca', 'Anulowana')) | Status płatności faktury. |

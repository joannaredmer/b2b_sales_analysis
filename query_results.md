# Przykładowe wyniki zapytań (Query Results)

Poniżej znajdują się przykładowe rezultaty, jakie zwracają zapytania SQL zawarte w pliku `queries.sql`.

---

### 1. Podsumowanie obrotów z kontrahentami
*Wynik grupowania faktur i sumowania kwot brutto dla poszczególnych firm, posortowany malejąco.*

| company_name | total_invoices | total_gross_amount |
| :--- | :---: | :---: |
| Auto-Serwis Krzysztof Nowak | 12 | 145 200,50 zł |
| Moto-Tech S.C. | 8 | 98 450,00 zł |
| Warsztat Samochodowy "Express" | 5 | 45 100,00 zł |
| PHU FastParts | 3 | 18 900,00 zł |

---

### 2. Ranking transakcji dla każdego kontrahenta
*Wynik użycia funkcji okna (`ROW_NUMBER`), która numeruje faktury dla każdego klienta osobno, zaczynając od najwyższej kwoty brutto.*

| company_name | invoice_number | amount_gross | transaction_rank |
| :--- | :--- | :---: | :---: |
| Auto-Serwis Krzysztof Nowak | FV/2026/09/12 | 45 000,00 zł | 1 |
| Auto-Serwis Krzysztof Nowak | FV/2026/08/04 | 32 000,50 zł | 2 |
| Auto-Serwis Krzysztof Nowak | FV/2026/07/15 | 15 200,00 zł | 3 |
| Moto-Tech S.C. | FV/2026/09/01 | 52 000,00 zł | 1 |
| Moto-Tech S.C. | FV/2026/06/11 | 46 450,00 zł | 2 |
| Warsztat Samochodowy "Express" | FV/2026/09/10 | 28 000,00 zł | 1 |
| Warsztat Samochodowy "Express" | FV/2026/08/22 | 17 100,00 zł | 2 |

---

### 3. Podsumowanie zamówień dla kontrahentów
*Zestawienie liczby zamówień oraz łącznej kwoty dla każdego klienta.*

| Klient / Kontrahent | Liczba zamówień | Łączna kwota (PLN) |
|---------------------|-----------------|---------------------|
| Auto-Serwis Sp. z o.o. | 4 | 12 450,00 zł |
| MotoParts S.A. | 7 | 28 900,50 zł |
| Warsztat Mobilny | 2 | 5 300,00 zł |

---

### 4. Dostępność części w magazynie
*Aktualny stan magazynowy, kategorie i ceny jednostkowe poszczególnych części.*

| Nazwa części | Kategoria | Dostępna ilość | Cena jednostkowa (PLN) |
|--------------|-----------|----------------|------------------------|
| Zderzak przedni uniwersalny | Karoseria | 15 | 850,00 zł |
| Reflektor LED prawy | Oświetlenie | 8 | 1 200,00 zł |
| Lakier samochodowy czarny (1L) | Chemia | 42 | 195,00 zł |
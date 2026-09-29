# Analiza Braków, Błędów i Jakości Danych (Gap & Data Quality Analysis)

Dokument ten identyfikuje potencjalne ryzyka, braki w danych (data gaps) oraz reguły walidacyjne niezbędne do zapewnienia spójności bazy danych B2B.

## 1. Identyfikowane Braki i Ryzyka w Danych (Data Gaps)

* **Brakujące lub niepoprawne numery NIP:**
  * *Problem:* Ryzyko wprowadzenia kontrahenta-widmo lub zdublowania wpisów firm.
  * *Rozwiązanie:* Zastosowanie ograniczenia `UNIQUE` oraz walidacja długości i formatu ciągu znaków NIP na poziomie aplikacji/bazy.
* **Transakcje bez przypisanego kontrahenta (Osierocone rekordy):**
  * *Problem:* Usunięcie kontrahenta z tabeli głównej mogłoby pozostawić faktury w próżni analitycznej.
  * *Rozwiązanie:* Użycie klucza obcego (`FOREIGN KEY`) z odpowiednimi restrykcjami integralności referencyjnej.
* **Ujemne lub zerowe kwoty netto transakcji:**
  * *Problem:* Błędy w systemach księgowych prowadzące do zaburzenia raportów finansowych.
  * *Rozwiązanie:* Wprowadzenie reguły walidacyjnej `CHECK (net_amount >= 0)` w schematach tabeli.

## 2. Rekomendowane Reguły Czyszczenia Danych (Data Cleaning Rules)
1. **Normalizacja statusów:** Wprowadzenie słowników zamkniętych (wartości wyliczeniowych) dla pól takich jak `status` kontrahenta oraz `payment_status` transakcji, aby uniknąć literówek i niespójności w raportach (np. "Opłacona" vs "oplacona").
2. **Obsługa wartości NULL:** Pola kluczowe dla rozliczeń (`invoice_number`, `net_amount`, `transaction_date`) posiadają restrykcję `NOT NULL`.
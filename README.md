# B2B Sales & Transaction Analysis

Projekt analityczno-bazodanowy stworzony w celu demonstracji umiejętności pracy ze strukturami danych SQL, pisania zapytań analitycznych oraz analizy jakości i braków w danych (Data Quality & Gap Analysis).

---

## 📂 Struktura repozytorium

W projekcie znajdują się następujące pliki:

* **`schema.sql`** – Definicje struktur tabel bazy danych (kontrahenci, transakcje, zamówienia, magazyn) wraz z ograniczeniami walidacyjnymi (`NOT NULL`, `UNIQUE`, `CHECK`, klucze obce).
* **`data.sql`** – Przykładowe dane testowe zasilające bazę.
* **`queries.sql`** – Zaawansowane zapytania SQL (grupowanie `GROUP BY`, agregacje, funkcje okna `ROW_NUMBER`).
* **`query_results.md`** – Przykładowe rezultaty zwracane przez zapytania SQL, zaprezentowane w formie czytelnych tabel.
* **`gap_analysis.md`** – Analiza jakości danych, zidentyfikowane braki (Data Gaps), ryzyka oraz rekomendowane reguły oczyszczania danych.
* **`metadata_catalog.md`** – Słownik danych i katalog metadanych projektu.

---

## 🛠️ Technologie i narzędzia
* **SQL / SQLite** – Projektowanie relacyjnych baz danych i obsługa zapytań analitycznych.
* **Git & GitHub** – Kontrola wersji i publikacja kodu.
* **Visual Studio Code** – Środowisko robocze.
* **AI-Assisted Workflow** – Wykorzystanie nowoczesnych narzędzi sztucznej inteligencji do wsparcia architektury danych, tworzenia dokumentacji i optymalizacji procesów analitycznych.
# First Clean Data Report

Projekt czyszczenia i analizy danych zamówień klientów w SQL oraz wizualizacja w Excelu.

## Pliki w repozytorium

- 'raw_customer_orders.csv' – dane przed czyszczeniem (brudne)
- 'clean_customer_orders.xlsx' – dane po czyszczeniu
- 'Liczba zamówień według kraju.pdf' – wykres liczby zamówień według kraju

## Kroki czyszczenia

- Standaryzacja dat (YYYY-MM-DD)
- Obsługa braków (NULL → Unknown lub wartość domyślna)
- Ujednolicenie nazw krajów (Poland, UK, USA)
- Domyślna ilość: 1
- Usunięcie duplikatów

## Wizualizacja

Wizualizacja zamówień według kraju znajduje się w pliku PDF:  
[`Liczba zamówień według kraju.pdf`](Liczba%20zam%C3%B3wie%C5%84%20wed%C5%82ug%20kraju.pdf)

## Narzędzia

- SQL (DBeaver, PostgreSQL)
- Microsoft Excel

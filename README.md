# First Clean Data Report

Projekt czyszczenia i analizy danych zamówień klientów w SQL oraz wizualizacja w Excelu.

## Pliki w repozytorium

- 'raw_customer_orders.xlsx' – dane przed czyszczeniem (brudne)
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
<img width="905" height="639" alt="image" src="https://github.com/user-attachments/assets/94adc49b-22aa-4ef9-99aa-6b0b3dfe139e" />


## Narzędzia

- SQL (DBeaver, PostgreSQL)
- Microsoft Excel

## Wykorzystany kod SQL do czyszczenia danych 

<img width="1114" height="297" alt="image" src="https://github.com/user-attachments/assets/cf3ee783-858e-4b29-9f46-2d55bad086d0" />

https://github.com/KatarzynaWProjects/First-clean-data-report/blob/main/kod%20sql%20do%20clean_customer_orders.txt

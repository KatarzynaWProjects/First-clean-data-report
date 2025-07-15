-- Wybieram tylko unikalne wiersze na podstawie orderid i pozostałych kolumn
SELECT DISTINCT
    orderid, 

    -- W tym miejscu wybieram, aby wstawić 'Unknown' tam, gdzie brakuje customername (NULL)
    COALESCE(customername, 'Unknown') AS customername,

    -- Dla kolumny orderdate wybieram zamianę różnych formatów daty na jeden spójny format DATE:
    -- Najpierw sprawdzam, czy data to jeden z niestandardowych przypadków i zamieniam na format MM/DD/YYYY
    -- Następnie, jeśli orderdate jest w formacie DD/MM/YYYY, konwertuję na DATE
    -- Jeśli jest w formacie DD-MM-YYYY, analogicznie konwertuję na DATE
    -- We wszystkich pozostałych przypadkach przyjmuję format YYYY-MM-DD
    CASE 
        WHEN orderdate IN ('06/22/2024', '07-13-2024', '07-23-2024') 
            THEN TO_DATE(orderdate, 'MM/DD/YYYY')
        WHEN orderdate ~ '^\d{2}/\d{2}/\d{4}$' 
            THEN TO_DATE(orderdate, 'DD/MM/YYYY')
        WHEN orderdate ~ '^\d{2}-\d{2}-\d{4}$' 
            THEN TO_DATE(orderdate, 'DD-MM-YYYY')
        ELSE TO_DATE(orderdate, 'YYYY-MM-DD')
    END AS orderdate,

    -- Analogicznie, w kolumnie product ustawiam 'Unknown', jeśli pole jest puste
    COALESCE(product, 'Unknown') AS product,

    -- Dla ilości (quantity) wybieram, by wszystkie braki (NULL) zamienić na 1
    CASE 
        WHEN quantity IS NULL THEN 1 
        ELSE quantity 
    END AS quantity,

    -- W przypadku adresu wybieram, aby zamienić braki na 'Unknown' i ujednolicić format (każde słowo z dużej litery)
    COALESCE(INITCAP(address), 'Unknown') AS address,

    -- Wybieram, że kraj 'UK' i 'USA' pozostawiam dużymi literami, a pozostałe kraje konwertuję na format: pierwsza litera duża
    CASE 
        WHEN UPPER(country) IN ('UK', 'USA') THEN UPPER(country) 
        ELSE INITCAP(country) 
    END AS country

FROM task1 t;


#Top 5 Customers by Total Purchase Amount
SELECT 
    c.FirstName || ' ' || c.LastName AS CustomerName,
    SUM(i.Total) AS TotalSpent
FROM 
    Customer c
JOIN 
    Invoice i ON c.CustomerId = i.CustomerId
GROUP BY 
    c.CustomerId
ORDER BY 
    TotalSpent DESC
LIMIT 5;

#Most Popular Genre by Total Tracks Sold
SELECT 
    g.Name AS Genre,
    COUNT(il.TrackId) AS TotalTracksSold
FROM 
    InvoiceLine il
JOIN 
    Track t ON il.TrackId = t.TrackId
JOIN 
    Genre g ON t.GenreId = g.GenreId
GROUP BY 
    g.GenreId
ORDER BY 
    TotalTracksSold DESC
LIMIT 1;

#Employees Who Are Managers with Their Subordinates
SELECT 
    m.FirstName || ' ' || m.LastName AS Manager,
    e.FirstName || ' ' || e.LastName AS Subordinate
FROM 
    Employee e
JOIN 
    Employee m ON e.ReportsTo = m.EmployeeId;

#Most Sold Album for Each Artist
SELECT 
    ar.Name AS Artist,
    al.Title AS Album,
    COUNT(il.TrackId) AS TotalSold
FROM 
    InvoiceLine il
JOIN 
    Track t ON il.TrackId = t.TrackId
JOIN 
    Album al ON t.AlbumId = al.AlbumId
JOIN 
    Artist ar ON al.ArtistId = ar.ArtistId
GROUP BY 
    ar.ArtistId, al.AlbumId
HAVING 
    TotalSold = (
        SELECT MAX(TotalCount) 
        FROM (
            SELECT 
                COUNT(il2.TrackId) AS TotalCount
            FROM 
                InvoiceLine il2
            JOIN 
                Track t2 ON il2.TrackId = t2.TrackId
            JOIN 
                Album al2 ON t2.AlbumId = al2.AlbumId
            WHERE 
                al2.ArtistId = ar.ArtistId
            GROUP BY 
                al2.AlbumId
        )
    );

#Monthly Sales Trends in 2013
SELECT 
    STRFTIME('%Y-%m', InvoiceDate) AS Month,
    SUM(Total) AS MonthlySales
FROM 
    Invoice
WHERE 
    STRFTIME('%Y', InvoiceDate) = '2013'
GROUP BY 
    Month
ORDER BY 
    Month;

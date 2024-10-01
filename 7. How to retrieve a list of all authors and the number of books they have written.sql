SELECT 
    a.author_id,
    a.first_name,
    a.last_name,
    COUNT(b.book_id) AS total_books
FROM 
    Authors a
LEFT JOIN 
    Books b ON a.author_id = b.author_id
GROUP BY 
    a.author_id, a.first_name, a.last_name;

SELECT 
    b.title AS book_title,
    p.publisher_name
FROM 
    Books b
JOIN 
    Publishers p ON b.publisher_id = p.publisher_id
ORDER BY 
    b.title;

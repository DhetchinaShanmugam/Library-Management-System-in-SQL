SELECT 
    b.title,
    COUNT(br.borrow_id) AS times_borrowed
FROM 
    Books b
LEFT JOIN 
    Borrowing br ON b.book_id = br.book_id
GROUP BY 
    b.book_id, b.title;

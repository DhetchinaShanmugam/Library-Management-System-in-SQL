SELECT 
    m.member_id,
    m.first_name,
    m.last_name,
    COALESCE(SUM(f.fine_amount), 0) AS total_fines
FROM 
    Members m
LEFT JOIN 
    Borrowing br ON m.member_id = br.member_id
LEFT JOIN 
    Fines f ON br.borrow_id = f.borrow_id
GROUP BY 
    m.member_id, m.first_name, m.last_name;

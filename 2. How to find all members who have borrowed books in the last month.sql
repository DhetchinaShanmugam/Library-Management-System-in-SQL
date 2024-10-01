SELECT 
    m.member_id,
    m.first_name,
    m.last_name,
    br.borrow_date
FROM 
    dhet.Members m
JOIN 
    dhet.Borrowing br ON m.member_id = br.member_id
WHERE 
    br.borrow_date >= NOW() - INTERVAL 1 MONTH;

 
 select b.book_id,
    b.title AS book_title,
    CONCAT(a.first_name, ' ', a.last_name) AS author_name,
    c.category_name
FROM 
 dhet.books b join dhet.authors a on b.author_id = a.author_id
 join dhet.categories c on b.category_id = c.category_id
 order by b.title;

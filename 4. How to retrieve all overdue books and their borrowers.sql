select b.title as book_title,
concat(m.first_name, ' ', m.last_name) as borrower_name,
br.due_date
from dhet.borrowing br join dhet.books b 
on br.book_id = b.book_id
join
members m on br.member_id = m.member_id
where br.return_date is null and br.due_date < current_date();
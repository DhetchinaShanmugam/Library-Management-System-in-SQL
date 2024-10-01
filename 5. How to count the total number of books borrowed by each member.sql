select m.member_id, 
concat(m.first_name, ' ', m.last_name) as borrower_name,
count(br.borrow_id) as total_borrowed_books
from dhet.members m left join dhet.borrowing br on m.member_id = 
br.member_id
group by m.member_id, borrower_name;

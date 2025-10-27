select b.book_id,
b.title, 
b.isbn13, 
b.num_pages,
b.publication_date, 
l.language_id, 
l.language_code, 
l.language_name,  
p.publisher_id, 
p.publisher_name

from book as b left join book_language as l
on b.language_id = l.language_id
left join publisher as p
on b.publisher_id = p.publisher_id
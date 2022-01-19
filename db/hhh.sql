
use webdb;
show tables;

desc guestbook;

insert into guestbook values(null, '진혜린', '1234' , 'ㅎㅇ', now());

desc user;

insert into user values(null, '관리자', 'admin@mysite.com', '1234', 'male', now());

select no, name from user where email = 'admin@mysite.com'and password = '1234';
select name, email, gender from user where no=2;

update board set status = 'deleted' where no = 12;

select * from user;

-- board

desc board;

select b.no, b.title, b.hit , b.contents, a.name 
from user a, board b 
where a.no = b.user_no
order by b.g_no desc, b.o_no asc;


insert into board values(null, '으앨어ㅐ앵', '애앵ㅇ', 0 , 
ifnull((select g_no + 1 from (select max(g_no) as g_no from board) A), 1), 1, 1, now(), 1, default);

select * from board;
delete from board;


update board set reply_cnt = reply_cnt + 1 where depth = 3-2 and g_no = 1;


select 	b.no, b.title, a.name, b.hit, date_format(b.reg_date, '%Y/%m/%d %H:%i:%s') as reg_date, b.contents, b.g_no, b.o_no, b.depth from  user a, board b where a.no=b.user_no order by b.g_no desc, b.o_no;

select no,name, date_format(reg_date, "%y/%m/%d %H:%i:%s") as reg_date, message from guestbook order by reg_date desc;



delete from guestbook where no = 1 and password = '1234';
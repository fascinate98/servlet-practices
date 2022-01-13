show tables;

desc guestbook;

insert into guestbook values(null, '진혜린', '1234' , 'ㅎㅇ', now());


select no,name, date_format(reg_date, "%y/%m/%d %H:%i:%s") as reg_date, message from guestbook order by reg_date desc;

delete from guestbook where no = 1 and password = '1234';
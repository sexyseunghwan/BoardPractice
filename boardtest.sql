select * from tabs;


create table tbltest(
    seq number primary key,
    name varchar2(200),
    age number

);

create sequence tblSeq;

insert into tbltest values (tblSeq.nextVal,'홍길동',22);


select * from tbltest;



select * from tabs;



-- tblbook 으로 테스트를 해보자
select * from tblbook;

select count(*) from tblbook;

select * from tblbook where book_name like '%점프%' or publisher like '%이지스%';

select count(*) as cnt where book_name like '%%%s%%' or publisher like '%%%s%';


select count(*) as cnt from tblBook;

select * from tblbook where publisher like '%이지스%';

select count(*) from tblinsa;




--이런식으로 사용하면 되는거 같은데 ??
select b.* from (select a.*,rownum as rn from (select tb.* from tblbook tb) a) b where rn >= 1 and rn <= 30;



select tb.* from tblbook tb where tb.publisher like '%이지%' order by tb.seq_book;


insert into tblbook values (seq_book.nextVal,'씨언어가 좋아','애플과삼성');

select * from tblbook;



select * from tblbook where book_name like '%점%' or publisher like '%씨%';



commit;


select count(*) as cnt from tblBook where book_name like '%점프%' or publisher like '%퍼%';




select * from tblbook;


--애는 이따가 만들어주자
create table tblBoard(
    seq number primary key,
    innersubject varchar2(1000),
    innerContent varchar2(5000),
    regdate date

);








                                 

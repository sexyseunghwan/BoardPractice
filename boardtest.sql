select * from tabs;


create table tbltest(
    seq number primary key,
    name varchar2(200),
    age number

);

create sequence tblSeq;

insert into tbltest values (tblSeq.nextVal,'ȫ�浿',22);


select * from tbltest;
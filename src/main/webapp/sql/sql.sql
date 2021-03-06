create table mvc_board(
  bID NUMBER(4) PRIMARY KEY,
  bName VARCHAR2(20),
  bTitle VARCHAR2(100),
  bContent  VARCHAR2(300),
  bMit  MEMVER(4) DEFAULT 0,
  bGroup  NUMBER(4),
  bStep NUMBER(4),
  bIndent NUMBER(4)
);

create table tbluser(
   id    varchar2(50),
   name   varchar2(30),
   birth   date,
   email   varchar2(60),
   address   varchar2(100),
   nation   varchar2(40),
   phone   varchar2(30),
   password varchar2(30),
   mileage   number(10)

);

alter table tbluser add constraint pk_id primary key(id)

create table board(
	boardcd varchar2(20),
	boardnm varchar2(40) not null,
	constraint pk_board primary key(boardcd)
);

select * from board


select * from tbluser

select * from tbluser where id='1' and password='1111111'

create table board(
	boardcd varchar2(20),
	boardnm varchar2(40) not null,
	constraint pk_board primary key(boardcd)
);

select * from board

create table article(
	articleno number,
	boardcd varchar2(20),
	title varchar2(200) not null,
	boardpw varchar2(50),
	content varchar2(500),
	regdate date,
	hit number(5),
	dept number(5),
	img varchar2(20),
	writer varchar2(30)
);
alter table tbluser drop(writer)
alter table article add(writer varchar2(30))
commit
select * from article 
create sequence seq_article
delete from article
insert into article values(seq_article.nextval,'이벤트','두번째 이벤트','1111','테스트...',sysdate,0,0,0,'이종수')
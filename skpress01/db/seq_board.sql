
 create sequence seq_board;
 create table tbl_board(
     bno number(10,0),
     title varchar2(200) not null,
     content varchar2(3600) not null,
     writer varchar2(50) not null,
     regdate date default sysdate,
     updatedate date default sysdate
 );

 alter table tbl_board add constraint pk_board
 primary  key (bno);

 insert into tbl_board(bno, title, content, writer)
 values(seq_board.nextval, '테스트 제목', '테스트 내용', '이윤기');

 select * from tbl_board;

 commit;
--select * from tbl_attach where bno=21;

--insert into tbl_board(bno, title, content, writer)
--select seq_board.nextval, title, content, writer from tbl_board;

--select count(*) from tbl_board;

--select * from tbl_board order by bno+1 desc;

--select * from tbl_board order by bno desc;

--select bno from tbl_board order by bno desc;

select /*+ index_desc(tbl_board pk_board) */  
rownum rn, bno, title, content
from tbl_board
where rownum <= 10;

--select /*+ index_desc(tbl_board pk_board) */  
--rownum rn, bno, title, content
--from tbl_board
--where rownum <= 20

select bno, title, content
from(
    select /*+ index_desc(tbl_board pk_board) */  
    rownum rn, bno, title, content
    from tbl_board
    where rownum <= 20
)
where rn > 10;
DROP TABLE paper;

DROP SEQUENCE paper_seq;

CREATE TABLE paper(
 no NUMBER PRIMARY KEY,
 title VARCHAR2(300) NOT NULL,
 content VARCHAR2(2000) NOT NULL,
 writer VARCHAR2(30) NOT NULL,
 writeDate DATE DEFAULT sysdate,
 hit NUMBER DEFAULT 0,
 pw VARCHAR2(50) NOT NULL
);

CREATE SEQUENCE paper_seq;
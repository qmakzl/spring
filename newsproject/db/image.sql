DROP TABLE image;

DROP SEQUENCE image_seq;

CREATE TABLE image(
 no NUMBER PRIMARY KEY,
 title VARCHAR2(300) NOT NULL,
 content VARCHAR2(2000) NOT NULL,
 writer VARCHAR2(30) NOT NULL,
 writeDate DATE DEFAULT sysdate,
 fileName VARCHAR2(100) NOT NULL 
);

CREATE SEQUENCE image_seq;
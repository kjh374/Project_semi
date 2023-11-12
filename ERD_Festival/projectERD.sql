
/* Drop Triggers */

DROP TRIGGER TRI_festival_ftvNo;
DROP TRIGGER TRI_festival_ftv_no;
DROP TRIGGER TRI_festival_ftv_num;



/* Drop Tables */

DROP TABLE ftv_like CASCADE CONSTRAINTS;
DROP TABLE reply CASCADE CONSTRAINTS;
DROP TABLE festival CASCADE CONSTRAINTS;
DROP TABLE users CASCADE CONSTRAINTS;



/* Drop Sequences */

DROP SEQUENCE SEQ_festival_ftvNo;
    DROP SEQUENCE SEQ_festival_ftv_no;
DROP SEQUENCE SEQ_festival_ftv_num;




/* Create Sequences */

CREATE SEQUENCE SEQ_festival_ftv_num INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_like_num INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_reply_comment_num INCREMENT BY 1 START WITH 1;


/* Create Tables */

CREATE TABLE festival
(
	ftv_num number NOT NULL,
	ftv_name varchar2(500) NOT NULL,
	host_org varchar2(500),
	phone VARCHAR2(500),
	place varchar2(500) NOT NULL,
	url varchar2(500),
	ftv_content varchar2(4000),
	organizer_org varchar2(500),
	admn_area varchar2(500),
	road_addr varchar2(500),
	latitude number,
	longitude number,
	end_date date NOT NULL,
	start_date date NOT NULL,
	season varchar2(50),
	count number DEFAULT 0,
	PRIMARY KEY (ftv_num)
);


CREATE TABLE ftv_like
(
	like_num number(10,0) NOT NULL,
	ftv_num number NOT NULL,
	user_id varchar2(50) NOT NULL,
	PRIMARY KEY (like_num)
);


CREATE TABLE reply
(
	comment_num number NOT NULL,
	content varchar2(500) NOT NULL,
	reg_date date DEFAULT SYSDATE NOT NULL,
	user_id varchar2(50) NOT NULL,
	ftv_num number NOT NULL,
    update_date date,
	PRIMARY KEY (comment_num)
);


CREATE TABLE users
(
	user_id varchar2(50) NOT NULL,
	user_pw varchar2(500) NOT NULL,
	email varchar2(500) NOT NULL,
	name varchar2(500) NOT NULL,
	PRIMARY KEY (user_id)
);



/* Create Foreign Keys */

ALTER TABLE ftv_like
	ADD FOREIGN KEY (ftv_num)
	REFERENCES festival (ftv_num)
;


ALTER TABLE reply
	ADD FOREIGN KEY (ftv_num)
	REFERENCES festival (ftv_num)
;


ALTER TABLE ftv_like
	ADD FOREIGN KEY (user_id)
	REFERENCES users (user_id)
;


ALTER TABLE reply
	ADD FOREIGN KEY (user_id)
	REFERENCES users (user_id)
;



/* Create Triggers */

CREATE OR REPLACE TRIGGER TRI_festival_ftv_num BEFORE INSERT ON festival
FOR EACH ROW
BEGIN
	SELECT SEQ_festival_ftv_num.nextval
	INTO :new.ftv_num
	FROM dual;
END;
<<<<<<< HEAD
--회원관리
create table zmember(
	mem_num number not null,
	id varchar2(12) unique not null,
	auth number(1) default 2 not null,--회원등급:0,탈퇴,1정지,2일반,3관리자
	constraint zmember_pk primary key(mem_num)
);
--회원관리 상세정보
create table zmember_detail(
	mem_num number not null,
	name varchar2(30) not null,
	passwd varchar2(12)	not null,
	phone varchar2(15) not null,
	email varchar2(50) not null,
	zipcode varchar2(20) not null,
	address1 varchar2(90) not null,
	address2 varchar2(90) not null,
	photo varchar2(150),
	reg_date date default sysdate not null,
	modify_date date,
	constraint zmember_detail_pk primary key (mem_num),
	constraint zmember_detail_fk foreign key (mem_num) references zmember (mem_num)
);
create sequence zmember_seq;

--게시판
create table event(
 event_board_num number not null,
 event_title varchar2(150) not null,
 event_content clob not null,
 event_hit number(5) default 0 not null,
 event_reg_date date default sysdate not null,
 event_modify_date date,
 event_filename varchar2(150),
 event_ip varchar2(40) not null,
 mem_num number not null,
 constraint event_pk primary key (event_board_num),
 constraint event_fk foreign key (mem_num) 
                             references member (mem_num)
);

create sequence event_seq;

--게시판 좋아요
create table event_fav(
 event_fav_num number not null,
 event_board_num number not null,
 mem_num number not null,
 constraint event_fav_pk primary key(event_fav_num),
 constraint event_fav_fk1 foreign key (event_board_num) references event (event_board_num),
 constraint event_fav_fk2 foreign key (mem_num) references member (mem_num)
);

create sequence eventfav_seq;

--게시판 댓글
create table event_reply(
 event_re_num number not null,
 event_re_content varchar2(900) not null,
 event_re_date date default sysdate not null,
 event_re_modifydate date,
 event_re_ip varchar2(40) not null,
 event_board_num number not null,
 mem_num number not null,
 constraint ereply_pk primary key (event_re_num),
 constraint ereply_fk foreign key (event_board_num) references event (event_board_num),
 constraint ereply_fk2 foreign key (mem_num) references member (mem_num)
);

create sequence ereply_seq;


=======
<<<<<<< HEAD
--영화 뉴스 게시판
create table news(
 news_num number not null,
 news_title varchar2(150) not null,
 news_content clob not null,
 news_hit number(5) default 0 not null,
 news_date date default sysdate not null,
 news_modifydate date,
 news_photo varchar2(300),
 mem_num number not null,
 constraint news_pk primary key (news_num),
 constraint member_fk foreign key (mem_num) 
                             references member (mem_num)
);

create sequence news_seq;
=======
create table product(
	pd_num number not null,
	pd_name varchar2(20) not null,
	pd_price number not null,
	pd_quantity number not null,
	pd_content varchar2(100) not null,
	pd_photo varchar2(150) not null,
	pd_regdate date default sysdate not null,
	constraint product_pk primary key (pd_num)
);

create sequence product_seq;

create table orders(
	ord_num number not null,
	mem_num number not null,
	pd_num number not null,
	ord_regdate date default sysdate not null,
	ord_quantity number not null,
	constraint orders_pk primary key (ord_num),
	constraint orders_fk foreign key (mem_num) references member_detail (mem_num),
	constraint orders_fk foreign key (pd_num) references product (pd_num)
);

create sequence oreders_seq;



--회원관리
create table zmember(
 mem_num number not null,
 id varchar2(12) unique not null,
 auth number(1) default 2 not null, --회원등급:0탈퇴,1정지,2일반,3관리자
 constraint zmember_pk primary key (mem_num)
);
--회원관리 상세정보
create table zmember_detail(
 mem_num number not null,
 name varchar2(30) not null,
 passwd varchar2(12) not null,
 phone varchar2(15) not null,
 email varchar2(50) not null,
 zipcode varchar2(5) not null,
 address1 varchar2(90) not null,
 address2 varchar2(90) not null,
 photo varchar2(150),
 reg_date date default sysdate not null,
 modify_date date,
 constraint zmember_detail_pk primary key (mem_num),
 constraint zmember_detail_fk foreign key (mem_num) 
                             references zmember (mem_num)
);

create sequence zmember_seq;

create table zboard(
	board_num number not null,
	title varchar2(150) not null,
	content clob not null,
	hit number(5) default 0 not null,
	reg_date date default sysdate not null,
	modify_date date,
	filename varchar2(150),
	ip varchar2(40) not null,
	mem_num number not null,
	constraint zboard_pk primary key (board_num),
	constraint zboard_fk foreign key (mem_num) references zmember (mem_num)
);

>>>>>>> shop

>>>>>>> a29045c41b5dc6f89e90ec2bd7ce01a4aaaa5413

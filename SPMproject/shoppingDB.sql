drop table spuser;
drop table spproduct;
drop table spbasket;
drop table board;

create table spuser(
	UserNumber 	number 			constraints user_UserNumber_PK primary key,
	UserType	varchar2(20) 	default '일반회원',
	UserID 		varchar2(20) 	not null,
	Password 	varchar2(20) 	not null,
	UserName 	varchar2(20) 	not null,
	Tel 		varchar2(20) 	not null,
	Email 		varchar2(30) 	not null,
	Address 	varchar2(50)	not null
);


select * from spuser where userid = 'admin' and password = '1234'; 

insert into spuser values(1000000,'관리자','admin','1234','Admin','010-1234-1234','admin@naver.com','서울 동대문구');
insert into spuser values(1000001,'관리자','manager01','1234','김지혜','010-1234-1235','manager01@naver.com','수원시 권선구');
insert into spuser values(1000002,'관리자','manager02','1234','김지영','010-1234-1236','manager02@naver.com','수원시 팔달구');
insert into spuser values(1000003,'일반회원','dkjfh35','1111','김수란','010-1234-1237','dkjfh35@naver.com','수원시 팔달구');
insert into spuser values(1000004,'일반회원','skjdh200','1111','이승철','010-1234-1238','skjdh200@naver.com','서울 동대문구');
insert into spuser values(1000005,'일반회원','fhjd33','1111','이유나','010-1234-1239','fhjd33@naver.com','수원시 권선구');
insert into spuser(usernumber, UserType, userid, password, username, tel, email, address)
values((select count(usernumber) from spuser)+1, '일반회원','dbtestuser','1234','dbtest','010-1234-1239','fhjd33@naver.com','수원시 권선구');

select * from spuser;
--------------------------------고객DB끝----------------------------------


create table spproduct(
ProductID varchar2(20) not null constraints product_ProductID_PK primary key,/*상품코드*/
ProductType varchar2(20) not null,/*상품종류*/
ProductName varchar2(100) not null,/*상품명*/
Explanation varchar2(200) not null,/*상품설명*/
Price number not null,/*상품가격*/
Stock number not null,/*상품재고*/
ProductURL varchar2(80) not null);/*해당상품 메인이미지*/

insert into spproduct values('T00000001','Top','기본와인반팔티','40수 코마사 고급면 종류인 코마사를 사용해 부드러운감촉의 티셔츠',15000,1000,'shop_14.jpg');
insert into spproduct values('T00000002','Top','기본린넨긴팔','린넨소재를 사용해 통기성이 좋은 여름용 기본 긴팔',20000,1000,'shop_11.jpg');
insert into spproduct values('T00000003','Top','매듭반팔블라우스','실크소재를 혼합해 부드러운 감촉의 리본디테일이 살아있는 블라우스',40000,1000,'shop_16.jpg');
insert into spproduct values('B00000001','Bottom','핑크미디스커트','더티핑크 색상으로 세련된 색상의 미디길이 스커트',50000,1000,'shop_17.jpg');
insert into spproduct values('B00000002','Bottom','브라운카키팬츠','카키색에 브라운톤을 더해 차분한 색감의 팬츠',40000,1000,'shop_05.jpg');
insert into spproduct values('B00000003','Bottom','블랙와이드팬츠','블랙색상의 시원한 소재감의 와이드팬츠',25000,1000,'shop_12.jpg');
insert into spproduct values('D00000001','Dress','내추럴원피스','내추럴한 색상의 원피스',55000,1000,'shop_02.jpg');
insert into spproduct values('D00000002','Dress','네이비드레스','네이비색상의 주름디테일 드레스',65000,1000,'shop_03.jpg');
insert into spproduct values('D00000003','Dress','블랙드레스','자수 디테일의 블랙 드레스',75000,1000,'shop_06.jpg');
insert into spproduct values('O00000001','Outer','화이트아우터','보온이 뛰어난 아우터',85000,1000,'shop_13.jpg');
insert into spproduct values('O00000002','Outer','블랙자켓','심플한 기본 자켓',105000,1000,'shop_05.jpg');
insert into spproduct values('O00000003','Outer','블루자켓','시원한 소재감의 블루자켓',115000,1000,'shop_07.jpg');
insert into spproduct values('S00000001','Shoes','패턴힐','화려한 패턴의 힐',55000,1000,'shop_15.jpg');
insert into spproduct values('S00000002','Shoes','화이트운동화','뒤쪽 패턴이 포인트인 흰색 운동화',155000,1000,'banner_img_01.jpg');
insert into spproduct values('S00000003','Shoes','블랙운동화','스포티한 블랙 운동화',85000,1000,'category_img_02.jpg');


/*앞으로 몇 개 더 추가할 예정*/

select * from spproduct;


--------------------------------상품DB끝----------------------------------
create table spbasket(
	BasketID number constraints basket_BasketID_PK primary key,
	UserNumber number not null,
	ProductID varchar2(20) not null,
	cnt number not null,
	price number not null);




select * from spbasket;
--------------------------------장바구니DB끝----------------------------------

create table sppayment(
PaymentID number not null constraints payment_PaymentID_PK primary key,
UserNumber number not null,
ProductID varchar2(20) not null,
cnt number not null,
address varchar2(50) not null,
tel varchar2(20) not null,
CCnumber varchar2(30) not null,
CCpassword number not null
);

insert into sppayment values(1,1000004,'S1308',5,'수원시 팔달구','010-1234-1238','0000-0000-0000-0000',1234);
insert into sppayment values(2,1000000,'S1308',5,'서울 동대문구','010-1234-1234','0000-0000-0000-0000',1234);
insert into sppayment values(3,1000000,'T1304',3,'서울 동대문구','010-1234-1234','0000-0000-0000-0000',1234);

select * from sppayment;
--------------------------------결제DB끝----------------------------------






------------------------------------------------------------------------
create table board(
	seq number(5) primary key,
	title varchar2(200) not null,
	username varchar2(30) not null,
	content varchar2(2000) not null,
	regdate date default sysdate,
	cnt number(5) default 0,
	userid varchar2(8)
);

--------------------------------------
insert into board(seq, title, username, content, regdate, userid) 
values(1, '첫 번째 게시물', '홍길동', '첫 번째 게시물 내용.', '2017-02-05', 'hong');

insert into board(seq, title, username, content, regdate, userid) 
values((select nvl(max(seq), 0)+1 from board), '일곱 번째 게시물', '일지매', '일곱 번째 게시물 내용.', '2017-12-25', 'guest');

select * from board;









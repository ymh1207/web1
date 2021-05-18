show tables;

desc jusorok;

select * from jusorok;

insert into jusorok (name,birthday,pay) values ('가나다',now(),1000000);

insert into jusorok values ('마바사',default,now(),default,'서울','회사원',1500000);

select * from jusorok order by name desc;

update jusorok set address='청주' where name='가나다';

select * from jusorok where name='가나다';

delete from jusorok where name='가나다';

/*
 데이터베이스 작업순서
 1. jdbc드라이버 설치(압축을 풀은 jar파일을 작업 프로젝트의 web-inf lib폴더에 복사시켜 넣고 쓰기)
 2. 데이터베이스 설계(테이블/필드 설계)
 3. 더미데이터 넣기!
 4. VO 만들어준다. -Getter/Setter/toString
 5. DAO (데이터베이스 관련 객체)기본틀 만들기
 6. JSP와 Servlet을 함께 사용한다.
*/

create table login(
	idx int not null auto_increment primary key, /*고유번호*/
	mid varchar(20) not null,					 /*아이디(4~20글자) */
	pwd varchar(20) not null,					 /*비밀번호(4~20글자)*/
	name varchar(20) not null,					 /*성명*/
	point int default 1000,						 /*포인트 기본1000점*/
	lastdate datetime default now()				 /*최종 접속날짜*/
);

desc login;

insert into login values (default,'admin','1234','관리자',default,default);
select * from login order by idx desc;
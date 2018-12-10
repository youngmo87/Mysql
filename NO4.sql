create table Dept(
	id int unsigned not null auto_increment primary key, 
    name varchar(31) not null,
    prof int unsigned,
    student int unsigned not null default 0
    );   

alter table info add Dept int unsigned;

insert into Dept (name) values('일어일문학과');
insert into Dept (name) values('영어영문학과');
insert into Dept (name) values('중어중문학과');
insert into Dept (name) values('언어학과');
insert into Dept (name) values('통계학과');
insert into Dept (name) values('행정학과');
insert into Dept (name) values('법학과');

select * from Dept;
UPDATE Dept SET prof = ceil(rand()*10)+10 where id between 1 and 7;
UPDATE Dept d Set student = (select id from info where Dept=d.id order by rand() limit 1); 
UPDATE Dept Set student = (select id from info where Dept=2 order by rand() limit 1) where id = 2;
UPDATE Dept Set student = (select id from info where Dept=3 order by rand() limit 1) where id = 3;
UPDATE Dept Set student = (select id from info where Dept=4 order by rand() limit 1) where id = 4;
UPDATE Dept Set student = (select id from info where Dept=5 order by rand() limit 1) where id = 5;
UPDATE Dept Set student = (select id from info where Dept=6 order by rand() limit 1) where id = 6;
UPDATE Dept Set student = (select id from info where Dept=7 order by rand() limit 1) where id = 7;


update info SET Dept= 1 where birth between '000101' and '221231';
update info SET Dept= 2 where birth between '230101' and '431231';
update info SET Dept= 3 where birth between '440101' and '641231';
update info SET Dept= 4 where birth between '650101' and '751231';
update info SET Dept= 5 where birth between '760101' and '831231';
update info Set Dept= 6 where birth between '840101' and '901231';
update info Set Dept= 7 where birth between '910101' and '991231';

ALTER TABLE info  ADD CONSTRAINT fk_student_dep FOREIGN KEY (Dept)
REFERENCES  Dept(id)
ON DELETE NO ACTION
ON UPDATE NO ACTION



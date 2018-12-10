create table Club(
	id int unsigned not null auto_increment primary key, 
    name varchar(31) not null,
    leader int unsigned,
    constraint foreign key fk_leader_info (leader) references info (id)
    );   



create table ClubMember(
	id int unsigned not null auto_increment primary key, 
    club int unsigned,
    student int unsigned,
    level int unsigned not null default 0,
    constraint foreign key fk_student_student (student) references info (id),
    constraint foreign key fk_clubmember_club (club) references Club (id)
    );   

desc Club;
select * from Club;
select * from ClubMember;
select count(*) from ClubMember;


insert into ClubMember(club, student) select ceil(rand()*10), id from info order by rand() limit 500;
update ClubMember SET level= level + 1 where student between 0 and 100;
update ClubMember SET level= level + 2 where student between 200 and 300 limit 50;
DELETE from ClubMember where id not in (SELECT * from (select min(id) from ClubMember GROUP BY club, student) as tempTable);

select cm.club, count(*) 
	from ClubMember cm inner join Club c on cm.club = c.id group by cm.club;

 
alter table Club drop foreign key Club_ibfk_1;
alter table Club drop leader;


insert into Club(name,leader) values('요트부', 420);
insert into Club(name,leader) values('미술부', 300);
insert into Club(name,leader) values('체육부', 200);
insert into Club(name,leader) values('농구부', 100);
insert into Club(name,leader) values('축구부', 150);
insert into Club(name,leader) values('바둑부', 170);
insert into Club(name,leader) values('음악부', 160);
insert into Club(name) values('야구부');
insert into Club(name) values('배드민턴부');
insert into Club(name) values('테니스부');

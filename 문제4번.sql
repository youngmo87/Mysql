DELIMITER $$
CREATE Procedure for_question4(number smallint) 
BEGIN
create temporary table t_prof_ranking (
	prof varchar(31) default '',
	likecnt decimal(5) default 0,
	count decimal(5) default 0,
	average smallint default 0
   );

insert into t_prof_ranking(prof,likecnt,count,average) select p.name, p.likecnt, t1.count, t1.average 	
From   
	(
	select e.subject subject, sbj.name name, avg(g.midterm + g.finalterm)/2 average, count(*) count
	from Enroll e inner join Subject sbj on e.subject=sbj.id
				inner join Grade g on e.id=g.enroll group by subject
	) t1 inner join Prof p on t1.subject = p.id; 



	select p.name, t1.subject, t1.name, t1.average, t1.count, p.likecnt
	From   
	(
	select e.subject subject, sbj.name name, avg(g.midterm + g.finalterm)/2 average, count(*) count
	from Enroll e inner join Subject sbj on e.subject=sbj.id
				inner join Grade g on e.id=g.enroll group by subject
	) t1 inner join Prof p on t1.subject = p.id; 





	select t2.pname, 
    (
    select p.name pname, t1.subject subject, t1.name sname, t1.average avg, p.likecnt likecnt, t1.count count
		From   
		(
		select e.subject subject, sbj.name name, avg(g.midterm + g.finalterm)/2 average, count(*) count
		from Enroll e inner join Subject sbj on e.subject=sbj.id
					inner join Grade g on e.id=g.enroll
		group by e.subject
		) t1 inner join Prof p on t1.subject = p.id) t2;
    
    select id into v_sbj_id from Subject where name = _subject_name;
    
	select count(*) stu_cnt, (avg(g.midterm + g.finalterm) / 2) avr
      from Enroll e inner join Grade g on e.id = g.enroll
     where e.subject = v_sbj_id;
END $$
DELIMITER ;

select , 


select * from Student;
Select * from Enroll;
Select * from Grade;
Select * from Subject;
Select * from Prof;
Select * from Dept;
select p.name, d.name 
from Prof p left outer join Dept d on d.prof = p.id;
			






DELIMITER $$
CREATE Procedure sp_test(prank int) 
BEGIN
    declare tscore smallint default 0;
    
    select  into v_sbj_id from Subject where name = _subject_name;
    
	select count(*) stu_cnt, (avg(g.midterm + g.finalterm) / 2) avr
      from Enroll e inner join Grade g on e.id = g.enroll
     where e.subject = v_sbj_id;
END $$
DELIMITER ;

select p.name, t1.subject, t1.name, t1.average, t1.count, p.likecnt
	From   
	(
	select e.subject subject, sbj.name name, avg(g.midterm + g.finalterm)/2 average, count(*) count
	from Enroll e inner join Subject sbj on e.subject=sbj.id
				inner join Grade g on e.id=g.enroll group by subject
	) t1 inner join Prof p on t1.subject = p.id; 









Select * from Dept;
Select * from Prof;
Select * from Student;
Select * from Subject;
select count
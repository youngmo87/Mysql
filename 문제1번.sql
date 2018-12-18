CREATE VIEW Question1 AS
  SELECT
 	stu.id AS id,
    stu.name AS name,
    avg(g.midterm + g.finalterm)/2 AS stu_avg,
    count(*) AS stu_cnt
    from 
	Grade g inner join Enroll e on g.enroll = e.id
			inner join Subject sbj on e.subject = sbj.id
            inner join Student stu on e.student = stu.id
    group by stu.id;
   
select * from Question1;
    

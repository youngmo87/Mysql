drop Function if exists f_student_avg;
delimiter $$
create Function f_student_avg(student_id int) RETURNS smallint

BEGIN
	RETURN 
        (select avg(g.midterm + g.finalterm)/ 2 avr
          from Grade g inner join Enroll e on g.enroll = e.id
                       inner join Subject sbj on e.subject = sbj.id
                       inner join Student stu on e.student = stu.id
		 where stu.id = student_id);

END $$
DELIMITER ;
		

select f_student_avg(11);


select avg(g.midterm + g.finalterm)/2 avr
from Grade g inner join Enroll e on g.enroll = e.id
			inner join Subject sbj on e.subject = sbj.id
            inner join Student stu on e.student = stu.id
		 where stu.id = 2;
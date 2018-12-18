DELIMITER //
CREATE trigger tr_for_q3
    after insert on Club For Each Row
BEGIN
    insert into ClubMember(club, student, level)
		select c.id cid, s.id, 2 
        from Club c, Student s 
        where s.id not in (select student from ClubMember where level > 0)
        order by rand () limit 1;
END //
DELIMITER ;

select * from ClubMember;
select * from Club;

insert into Club(name) values('마술부');
select * from ClubMember where Club=(select max(id) from Club);


        

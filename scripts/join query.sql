use college

select student.studentid, student.fname, student.surname, results.moduleid, results.coursework ,results.exam 
from student
inner join results on student.studentid = results.studentid
where student.studentid = 50001234
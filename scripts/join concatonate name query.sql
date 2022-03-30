select student.studentid, student.fname +' '+ student.surname as pupil, module.name, results.coursework, results.exam
from [module]
inner join (student inner join results on student.studentid = results.studentid) on module.moduleid = results.moduleid
where student.studentid = 50001234
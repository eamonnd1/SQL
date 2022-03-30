create table enrolment 
	(
    courseid varchar (8) not null,
    studentid numeric not null,
    moduleid varchar (6) not null,
    tutorid varchar (4) not null,
    dateenrolled date not null,
	foreign key (studentid) references student (studentid),
	foreign key (courseid) references course (courseid),
	foreign key (moduleid) references module (moduleid),
	foreign key (tutorid) references tutor (tutorid)
    );
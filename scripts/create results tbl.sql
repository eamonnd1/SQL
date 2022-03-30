create table results
	(
    studentid numeric not null,
    moduleid varchar (6) not null,
    coursework numeric null,
    exam numeric null,
    foreign key (studentid) references student (studentid),
	foreign key (moduleid) references module (moduleid)
    );
USE college;

CREATE TABLE student
  (
     studentid NUMERIC NOT NULL,
     fname     VARCHAR (15) NOT NULL,
     surname   VARCHAR (15) NOT NULL,
     address1  VARCHAR (30) NOT NULL,
     towncity  VARCHAR (30) NOT NULL,
     postcode  VARCHAR (8) NOT NULL,
     primary key (studentid)
  ); 
  
create table course
	(
	courseid varchar (8) not null,
    name varchar (40) not null,
    cohort varchar (3) not null,
    primary key (courseid)
    );
    
create table module
	(
    moduleid varchar (6) not null,
    name varchar (30) not null,
    level numeric (1),
    primary key (moduleid)
    );
    
create table tutor
	(
    tutorid varchar (4) not null,
    fname varchar (15) not null,
    surname varchar (15) not null,
    primary key (tutorid)
    );
    
create table results
	(
    studentid numeric not null,
    moduleid varchar (6) not null,
    coursework numeric null,
    exam numeric null,
    foreign key (studentid) references student (studentid),
	foreign key (moduleid) references module (moduleid)
    );
    
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
    
insert into student 
	(
	studentid,
	fname,
	surname,
	address1,
	towncity,
	postcode
    )
values 
	(
    50001234,
    'Joseph',
    'Kerr',
    '31 Kiln Lane',
    'Belfast',
    'BT1 1HD'
    ),
    (
    50004567,
    'Rebecca',
    'Black',
    '14 Windsor Park',
    'Belfast',
    'BT7 8TH'
    ),
    (
    50007894,
    'Wayne',
    'Clarke',
    '11 Tower Hill',
    'Newry',
    'BT34 5DF'
    );
    
insert into course
	(
    courseid,
    name,
    cohort
    )
values
	(
    'P00172AA',
    'Diploma In Computing for the Economy',
    'FT1'
    ),
    (
    'P00172AB',
    'Diploma In Computing for the Economy',
    'PT1'
    ),
    (
    'P00172BB',
    'Diploma In Computing for the Economy',
    'PT2'
    );

insert into module
	(
    moduleid,
    name,
    level
    )
values
	(
    'com075',
    'Computer Concepts',
    2
    ),
    (
    'com078',
    'Web Development',
    2
    ),
    (
    'mat032',
    'Intro To Maths',
    2
    ),
    (
    'com087',
    'Python',
    3
    ),
    (
    'com077',
    'Database & SQL',
    3
    ),
    (
    'com079',
    'Economics',
    3
    ),
    (
    'mat034',
    'Maths For Computing',
    3
    );

insert into tutor
	(
    tutorid,
    fname,
    surname
    )
values
	(
    't001',
    'Mary',
    'Yale'
    ),
    (
    't002',
    'Gale',
    'Smith'
    ),
    (
    't003',
    'Peter',
    'Frost'
    ),
    (
    't004',
    'Geoff',
    'Peake'
    ),
    (
    't005',
    'Ralph',
    'Jones'
    ),
    (
    't006',
    'Linford',
    'Parks'
    ),
    (
    't007',
    'James',
    'McClure'
    ),
    (
    't008',
    'George',
    'Edgar'
    );



insert into results
	(
    studentid,
    moduleid,
    coursework,
    exam
    )
values
	(
    50001234,
    'com075',
    65,
    54
    ),
    (
    50001234,
    'com078',
    75,
    80
    ),
    (
    50001234,
    'mat032',
    56,
    54
    ),
    (
    50001234,
    'com087',
    78,
    87
    ),
    (
    50001234,
    'com077',
    72,
    71
    ),
    (
    50001234,
    'com079',
    61,
    56
    ),
    (
    50001234,
    'mat034',
    40,
    45
    ),
    (
    50004567,
    'com075',
    85,
    80
    ),
    (
    50004567,
    'com078',
    45,
    75
    ),
    (
    50004567,
    'mat032',
    65,
    55
    ),
    (
    50004567,
    'mat034',
    75,
    65
    ),
    (
    50007894,
    'com078',
    82,
    83
    ),
    (
    50007894,
    'mat032',
    65,
    89
    ),
    (
    50007894,
    'com087',
    78,
    89
    ),
    (
    50007894,
    'com077',
    58,
    52
    ),
    (
    50007894,
    'com079',
    65,
    65
    ),
    (
    50007894,
    'mat034',
    81,
    80
    ),
    (
    50007894,
    'com075',
    75,
    45
    );

insert into enrolment
	(
	courseid,
    studentid,
    moduleid,
	tutorid,
	dateenrolled
    )
values
	(
	'p00172AA',
	50001234,
	'com075',
	't001',
	'2021-09-01'
	),
	(
	'p00172AA',
	50001234,
	'com078',
	't002',
	'2021-09-01'
	),
	(
	'p00172AA',
	50001234,
	'mat032',
	't003',
	'2021-09-01'
	),
	(
	'p00172AA',
	50001234,
	'com087',
	't004',
	'2021-09-01'
	),
	(
	'p00172AA',
	50001234,
	'com077',
	't005',
	'2021-09-01'
	),
	(
	'p00172AA',
	50001234,
	'com079',
	't006',
	'2021-09-01'
	),
	(
	'p00172AA',
	50001234,
	'mat034',
	't007',
	'2021-09-01'
	),
	(
	'p00172AB',
	50004567,
	'com075',
	't001',
	'2021-09-01'
	),
	(
	'p00172AB',
	50004567,
	'com078',
	't002',
	'2021-09-01'
	),
	(
	'p00172AB',
	50004567,
	'mat032',
	't003',
	'2021-09-01'
	),
	(
	'p00172AB',
	50004567,
	'mat034',
	't007',
	'2021-09-01'
	),
	(
	'p00172AB',
	50007894,
	'mat034',
	't007',
	'2020-09-01'
	),
	(
	'p00172AB',
	50007894,
	'com075',
	't001',
	'2020-09-01'
	),
	(
	'p00172AB',
	50007894,
	'com078',
	't002',
	'2020-09-01'
	),
	(
	'p00172AB',
	50007894,
	'mat032',
	't008',
	'2020-09-01'
	),
	(
	'p00172BB',
	50007894,
	'com087',
	't004',
	'2021-09-01'
	),
	(
	'p00172BB',
	50007894,
	'com077',
	't005',
	'2021-09-01'
	),
	(
	'p00172BB',
	50007894,
	'com079',
	't006',
	'2021-09-01'
	);

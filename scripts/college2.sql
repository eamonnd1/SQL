USE college;

CREATE TABLE student
  (
     studentid NUMERIC NOT NULL,
     fname     VARCHAR (15) NOT NULL,
     surname   VARCHAR (15) NOT NULL,
     address1  VARCHAR (30) NOT NULL,
     towncity  VARCHAR (30) NOT NULL,
     postcode  VARCHAR (8) NOT NULL,
     PRIMARY KEY (studentid)
  );

CREATE TABLE course
  (
     courseid VARCHAR (8) NOT NULL,
     NAME     VARCHAR (40) NOT NULL,
     cohort   VARCHAR (3) NOT NULL,
     PRIMARY KEY (courseid)
  );

CREATE TABLE module
  (
     moduleid VARCHAR (6) NOT NULL,
     NAME     VARCHAR (30) NOT NULL,
     level    NUMERIC (1),
     PRIMARY KEY (moduleid)
  );

CREATE TABLE tutor
  (
     tutorid VARCHAR (4) NOT NULL,
     fname   VARCHAR (15) NOT NULL,
     surname VARCHAR (15) NOT NULL,
     PRIMARY KEY (tutorid)
  );

CREATE TABLE results
  (
     studentid  NUMERIC NOT NULL,
     moduleid   VARCHAR (6) NOT NULL,
     coursework NUMERIC NULL,
     exam       NUMERIC NULL,
     FOREIGN KEY (studentid) REFERENCES student (studentid),
     FOREIGN KEY (moduleid) REFERENCES module (moduleid)
  );

CREATE TABLE enrolment
  (
     courseid     VARCHAR (8) NOT NULL,
     studentid    NUMERIC NOT NULL,
     moduleid     VARCHAR (6) NOT NULL,
     tutorid      VARCHAR (4) NOT NULL,
     dateenrolled DATE NOT NULL,
     FOREIGN KEY (studentid) REFERENCES student (studentid),
     FOREIGN KEY (courseid) REFERENCES course (courseid),
     FOREIGN KEY (moduleid) REFERENCES module (moduleid),
     FOREIGN KEY (tutorid) REFERENCES tutor (tutorid)
  );

INSERT INTO student
            (studentid,
             fname,
             surname,
             address1,
             towncity,
             postcode)
VALUES      ( 50001234,
              'Joseph',
              'Kerr',
              '31 Kiln Lane',
              'Belfast',
              'BT1 1HD' ),
            ( 50004567,
              'Rebecca',
              'Black',
              '14 Windsor Park',
              'Belfast',
              'BT7 8TH' ),
            ( 50007894,
              'Wayne',
              'Clarke',
              '11 Tower Hill',
              'Newry',
              'BT34 5DF' );

INSERT INTO course
            (courseid,
             NAME,
             cohort)
VALUES      ( 'P00172AA',
              'Diploma In Computing for the Economy',
              'FT1' ),
            ( 'P00172AB',
              'Diploma In Computing for the Economy',
              'PT1' ),
            ( 'P00172BB',
              'Diploma In Computing for the Economy',
              'PT2' );

INSERT INTO module
            (moduleid,
             NAME,
             level)
VALUES      ( 'com075',
              'Computer Concepts',
              2 ),
            ( 'com078',
              'Web Development',
              2 ),
            ( 'mat032',
              'Intro To Maths',
              2 ),
            ( 'com087',
              'Python',
              3 ),
            ( 'com077',
              'Database & SQL',
              3 ),
            ( 'com079',
              'Economics',
              3 ),
            ( 'mat034',
              'Maths For Computing',
              3 );

INSERT INTO tutor
            (tutorid,
             fname,
             surname)
VALUES      ( 't001',
              'Mary',
              'Yale' ),
            ( 't002',
              'Gale',
              'Smith' ),
            ( 't003',
              'Peter',
              'Frost' ),
            ( 't004',
              'Geoff',
              'Peake' ),
            ( 't005',
              'Ralph',
              'Jones' ),
            ( 't006',
              'Linford',
              'Parks' ),
            ( 't007',
              'James',
              'McClure' ),
            ( 't008',
              'George',
              'Edgar' );

INSERT INTO results
            (studentid,
             moduleid,
             coursework,
             exam)
VALUES      ( 50001234,
              'com075',
              65,
              54 ),
            ( 50001234,
              'com078',
              75,
              80 ),
            ( 50001234,
              'mat032',
              56,
              54 ),
            ( 50001234,
              'com087',
              78,
              87 ),
            ( 50001234,
              'com077',
              72,
              71 ),
            ( 50001234,
              'com079',
              61,
              56 ),
            ( 50001234,
              'mat034',
              40,
              45 ),
            ( 50004567,
              'com075',
              85,
              80 ),
            ( 50004567,
              'com078',
              45,
              75 ),
            ( 50004567,
              'mat032',
              65,
              55 ),
            ( 50004567,
              'mat034',
              75,
              65 ),
            ( 50007894,
              'com078',
              82,
              83 ),
            ( 50007894,
              'mat032',
              65,
              89 ),
            ( 50007894,
              'com087',
              78,
              89 ),
            ( 50007894,
              'com077',
              58,
              52 ),
            ( 50007894,
              'com079',
              65,
              65 ),
            ( 50007894,
              'mat034',
              81,
              80 ),
            ( 50007894,
              'com075',
              75,
              45 );

INSERT INTO enrolment
            (courseid,
             studentid,
             moduleid,
             tutorid,
             dateenrolled)
VALUES      ( 'p00172AA',
              50001234,
              'com075',
              't001',
              '2021-09-01' ),
            ( 'p00172AA',
              50001234,
              'com078',
              't002',
              '2021-09-01' ),
            ( 'p00172AA',
              50001234,
              'mat032',
              't003',
              '2021-09-01' ),
            ( 'p00172AA',
              50001234,
              'com087',
              't004',
              '2021-09-01' ),
            ( 'p00172AA',
              50001234,
              'com077',
              't005',
              '2021-09-01' ),
            ( 'p00172AA',
              50001234,
              'com079',
              't006',
              '2021-09-01' ),
            ( 'p00172AA',
              50001234,
              'mat034',
              't007',
              '2021-09-01' ),
            ( 'p00172AB',
              50004567,
              'com075',
              't001',
              '2021-09-01' ),
            ( 'p00172AB',
              50004567,
              'com078',
              't002',
              '2021-09-01' ),
            ( 'p00172AB',
              50004567,
              'mat032',
              't003',
              '2021-09-01' ),
            ( 'p00172AB',
              50004567,
              'mat034',
              't007',
              '2021-09-01' ),
            ( 'p00172AB',
              50007894,
              'mat034',
              't007',
              '2020-09-01' ),
            ( 'p00172AB',
              50007894,
              'com075',
              't001',
              '2020-09-01' ),
            ( 'p00172AB',
              50007894,
              'com078',
              't002',
              '2020-09-01' ),
            ( 'p00172AB',
              50007894,
              'mat032',
              't008',
              '2020-09-01' ),
            ( 'p00172BB',
              50007894,
              'com087',
              't004',
              '2021-09-01' ),
            ( 'p00172BB',
              50007894,
              'com077',
              't005',
              '2021-09-01' ),
            ( 'p00172BB',
              50007894,
              'com079',
              't006',
              '2021-09-01' ); 
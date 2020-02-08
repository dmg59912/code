/*
Authors: Rios Rios, Sam Blawski, Jake Spievak
*/


CREATE TABLE student
    ( first_name VARCHAR(20),
      last_name VARCHAR(20),
      student_id INT,
      major VARCHAR(30),
      minor VARCHAR(30),
      phone VARCHAR(30),
      street VARCHAR(30),
      zip VARCHAR(10),
      CONSTRAINT student_pk PRIMARY KEY (student_id)
    );

    CREATE TABLE enrollment
    ( student_id INT,
      start_date DATE,
      end_date DATE,
      graduation_level VARCHAR(30),
      CONSTRAINT enrollment_pk PRIMARY KEY (student_id, start_date),
      CONSTRAINT enrollment_students_fk FOREIGN KEY (student_id) REFERENCES student ( student_id)
    );

    CREATE TABLE academic_program
    ( student_id INT,
      start_date DATE,
      name VARChAR(20),
      code VARCHAR(20),
      program_level VARCHAR(20),
      department VARCHAR(30),
      required_units INT,
      description VARCHAR(200),
      CONSTRAINT academic_program PRIMARY KEY (student_id, start_date, name,code),
      CONSTRAINT academic_program_enrollment_fk FOREIGN KEY (student_id, start_date) REFERENCES enrollment (student_id, start_date)
    );
    
INSERT INTO student(first_name, last_name, student_id, major, minor, phone, street, zip)
    VALUES ('John', 'Doe', 09442165, 'Computer Science', 'History', '5553452123', 'Bellflower Blvd.', '95031');

INSERT INTO enrollment(student_id, start_date, end_date, graduation_level)
    VALUES (09442165, '2020-04-23', '2022-07-11', 'Undergraduate');

INSERT INTO academic_program(student_id, start_date, name, code, program_level, department, required_units, description)
    VALUES (09442165, '2020-04-23', 'Oceanography', '342', 'Major', 'Geography', 124, 'Oceanic Geography');
    

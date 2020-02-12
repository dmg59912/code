


CREATE TABLE students
    ( first_name VARCHAR(20),
      last_name VARCHAR(20),
      student_id INT NOT NULL,
      phone VARCHAR(30),
      street VARCHAR(30),
      zip VARCHAR(10),
      CONSTRAINT student_pk PRIMARY KEY (student_id),
      CONSTRAINT student_ck UNIQUE (first_name,last_name,phone)
    );

    CREATE TABLE academic_programs
    (
      program_name VARCHAR(20) NOT NULL,
      program_level VARCHAR(30),
      code VARCHAR(20) NOT NULL,
      grad_level VARCHAR(20),
      department VARCHAR(30),
      required_units INT,
      description VARCHAR(200),
      CONSTRAINT academic_program PRIMARY KEY ( code),
      CONSTRAINT academic_program_ck UNIQUE (department,required_units)
    );


    CREATE TABLE enrollments
    ( student_id INT NOT NULL,
      start_date DATE NOT NULL,
      end_date DATE NOT NULL,
      code VARCHAR(20) NOT NULL,
      CONSTRAINT enrollment_pk PRIMARY KEY (student_id, start_date, code),
      CONSTRAINT enrollment_students_fk FOREIGN KEY (student_id) REFERENCES students( student_id),
      CONSTRAINT enrollment_academic_record_fk FOREIGN KEY (start_date, code) REFERENCES academic_programs(code)
    );

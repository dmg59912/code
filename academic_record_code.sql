


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
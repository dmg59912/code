


CREATE TABLE student
    ( first_name VARCHAR(20),
      last_name VARCHAR(20),
      major VARCHAR(30),
      minor VARCHAR(30),
      phone VARCHAR(30),
      street VARCHAR(30),
      zip VARCHAR(10),
      CONSTRAINT student_pk PRIMARY KEY (first_name, last_name, phone)
    );
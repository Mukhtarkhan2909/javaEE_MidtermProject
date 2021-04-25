CREATE TABLE courses
(
  course_name VARCHAR(255) PRIMARY KEY,
  description VARCHAR(255) NOT NULL,
  price INTEGER NOT NULL,
  duration_in_weeks INTEGER NOT NULL,
  degree_certificate_offered VARCHAR(255) NOT NULL
);

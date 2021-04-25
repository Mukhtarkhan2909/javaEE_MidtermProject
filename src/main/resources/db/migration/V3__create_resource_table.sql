CREATE TABLE resources
(
    resource_id INTEGER PRIMARY KEY,
    type VARCHAR(255) NOT NULL,
    owner INTEGER NOT NULL,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    course_name VARCHAR(255) NOT NULL,
    publication_date DATE NOT NULL
);

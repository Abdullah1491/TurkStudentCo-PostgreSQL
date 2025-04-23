-- TABLOLARI OLUŞTURMA
CREATE TABLE Members (
    member_id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL
	);
CREATE TABLE Courses (
    course_id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    title VARCHAR(200) NOT NULL,
    description TEXT,
    start_date DATE,
    end_date DATE NOT NULL,
    instructor_info VARCHAR(100) NOT NULL
);
CREATE TABLE Categories ( 
	category_id SMALLINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY, 
    category_name VARCHAR(100) NOT NULL
);
CREATE TABLE CourseCategories(
	course_id BIGINT NOT NULL,
    category_id SMALLINT NOT NULL,
    PRIMARY KEY (course_id, category_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id),
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);
CREATE TABLE Enrollments (
	enrollment_id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	member_id BIGINT NOT NULL,
	course_id BIGINT NOT NULL,
	enrollment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY (member_id) REFERENCES Members (member_id),
	FOREIGN KEY (course_id) REFERENCES Courses (course_id),
	UNIQUE (member_id, course_id)
);
CREATE TABLE Certificates (
	certificate_id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	certificate_code VARCHAR(100) UNIQUE NOT NULL,
	issue_date DATE NOT NULL
);
CREATE TABLE CertificateAssignments(
	assignment_id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	member_id BIGINT NOT NULL,
	certificate_id BIGINT NOT NULL,
	assigned_date DATE DEFAULT CURRENT_DATE,
	FOREIGN KEY(member_id) REFERENCES Members (member_id),
	FOREIGN KEY(certificate_id) REFERENCES Certificates (certificate_id),
	UNIQUE (member_id, certificate_id)
);
CREATE TABLE BlogPosts (
    post_id BIGINT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    publish_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    author_id BIGINT NOT NULL,
    FOREIGN KEY (author_id) REFERENCES Members(member_id)
);


	
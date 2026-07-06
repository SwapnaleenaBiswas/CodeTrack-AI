CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE coding_topics (
    id INT PRIMARY KEY AUTO_INCREMENT,
    topic_name VARCHAR(100),
    total_questions INT,
    solved_questions INT,
    difficulty VARCHAR(20),
    time_spent INT
);

CREATE TABLE aptitude_topics (
    id INT PRIMARY KEY AUTO_INCREMENT,
    topic_name VARCHAR(100),
    total_questions INT,
    solved_questions INT,
    accuracy DOUBLE,
    time_spent INT
);
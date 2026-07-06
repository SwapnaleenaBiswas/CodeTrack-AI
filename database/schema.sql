CREATE TABLE users (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE coding_topics (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    user_id BIGINT,
    topic_name VARCHAR(100),
    total_questions INT DEFAULT 0,
    solved_questions INT DEFAULT 0,
    easy_solved INT DEFAULT 0,
    medium_solved INT DEFAULT 0,
    hard_solved INT DEFAULT 0,
    time_spent INT DEFAULT 0,
    accuracy DECIMAL(5,2) DEFAULT 0,
    FOREIGN KEY(user_id) REFERENCES users(id)
);

CREATE TABLE aptitude_topics (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    user_id BIGINT,
    topic_name VARCHAR(100),
    total_questions INT DEFAULT 0,
    solved_questions INT DEFAULT 0,
    accuracy DECIMAL(5,2) DEFAULT 0,
    time_spent INT DEFAULT 0,
    FOREIGN KEY(user_id) REFERENCES users(id)
);

CREATE TABLE practice_logs (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    user_id BIGINT,
    topic_name VARCHAR(100),
    practice_type VARCHAR(30),
    questions_solved INT,
    time_spent INT,
    practice_date DATE,
    FOREIGN KEY(user_id) REFERENCES users(id)
);

CREATE TABLE daily_goals (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    user_id BIGINT,
    coding_goal INT,
    aptitude_goal INT,
    completed BOOLEAN DEFAULT FALSE,
    goal_date DATE,
    FOREIGN KEY(user_id) REFERENCES users(id)
);

CREATE TABLE study_schedule (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    user_id BIGINT,
    topic_name VARCHAR(100),
    study_date DATE,
    start_time TIME,
    end_time TIME,
    status VARCHAR(20),
    FOREIGN KEY(user_id) REFERENCES users(id)
);

CREATE TABLE revision_schedule (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    user_id BIGINT,
    topic_name VARCHAR(100),
    revision_date DATE,
    revision_number INT,
    completed BOOLEAN DEFAULT FALSE,
    FOREIGN KEY(user_id) REFERENCES users(id)
);

CREATE TABLE user_settings (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    user_id BIGINT,
    wakeup_time TIME,
    sleep_time TIME,
    daily_study_hours INT,
    target_date DATE,
    FOREIGN KEY(user_id) REFERENCES users(id)
);
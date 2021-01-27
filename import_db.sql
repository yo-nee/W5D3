CREATE TABLE users(
    id INTEGER PRIMARY KEY,
    fname TEXT NOT NULL,
    lname TEXT NOT NULL
);

CREATE TABLE questions(
    title TEXT NOT NULL,
    body TEXT NOT NULL
    FOREIGN KEY (user_id) REFERENCES users(id)
    /*FOREIGN KEY (question_id) REFERENCES questions(id) */
);

CREATE TABLE question_follows(
    SELECT 
        questions
    FROM
        users
    INNER JOIN users.question_follows ON questions.question_follows
    
);

CREATE TABLE replies(

)
-- users , questions
-- user can ask questions and add replies and like questions

CREATE TABLE users(
    id INTEGER PRIMARY KEY,
    fname TEXT NOT NULL,
    lname TEXT NOT NULL
);

CREATE TABLE questions(
    id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    body TEXT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)
    /*FOREIGN KEY (question_id) REFERENCES questions(id) */
);

CREATE TABLE question_follows(
    -- id 
    -- user_id 
    -- question_id INTERGER NOT NULL

     FOREIGN KEY (user_id) REFERENCES users(id),
     FOREIGN KEY (question_id) REFERENCES questions(id);

    -- SELECT 
    --     questions
    -- FROM
    --     users
    -- INNER JOIN users.question_follows ON questions.question_follows
    
);

CREATE TABLE replies(
    id INTEGER PRIMARY KEY,

    -- parent_reply_id INTEGER,

    body = TEXT NOT NULL
    FOREIGN KEY (parent_reply_id) REFERENCES replies(id),
    FOREIGN KEY (question_id) REFERENCES questions(id);
    FOREIGN KEY (author_id) REFERENCES users(id);
)
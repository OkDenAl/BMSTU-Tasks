CREATE TABLE IF NOT EXISTS users (
    id int GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    email varchar(255) UNIQUE NOT NULL,
    password varchar(100) NOT NULL
    );
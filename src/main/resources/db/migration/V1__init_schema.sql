CREATE TABLE IF NOT EXISTS users (
    id UUID PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    login VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    last_update TIMESTAMP DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS addresses (
    id UUID PRIMARY KEY,
    street VARCHAR(255),
    city VARCHAR(255),
    state VARCHAR(255),
    zip VARCHAR(255),
    number VARCHAR(255),
    user_id UUID NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id)
);
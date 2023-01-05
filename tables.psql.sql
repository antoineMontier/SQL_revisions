CREATE TABLE IF NOT EXISTS Incorparation (
    inc_id SERIAL PRIMARY KEY,
    inc_name VARCHAR(255) NOT NULL,
    inc_address VARCHAR(255) NOT NULL,
    inc_captial INTEGER NOT NULL
);

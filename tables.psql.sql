CREATE TABLE IF NOT EXISTS Incorparation (
    inc_id SERIAL PRIMARY KEY,
    inc_name VARCHAR(255) NOT NULL,
    inc_address VARCHAR(255) NOT NULL,
    inc_captial INTEGER NOT NULL
);


CREATE TABLE IF NOT EXISTS Shareholder (
    sha_id SERIAL PRIMARY KEY,
    sha_lastname VARCHAR(255) NOT NULL,
    sha_firstname VARCHAR(255) NOT NULL,
    sha_address VARCHAR(255) NOT NULL
);

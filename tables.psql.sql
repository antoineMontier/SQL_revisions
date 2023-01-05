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


CREATE TABLE IF NOT EXISTS Possesses (
    inc_id INTEGER NOT NULL,
    sha_id INTEGER NOT NULL,
    action_number INTEGER check (action_number >= 0),
    PRIMARY KEY (inc_id, sha_id),
    FOREIGN KEY (inc_id) REFERENCES Incorparation(inc_id),
    FOREIGN KEY (sha_id) REFERENCES Shareholder(sha_id)
);
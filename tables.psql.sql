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

INSERT INTO
    Incorparation (inc_id, inc_name, inc_address, inc_captial)
VALUES
    (1,'Incorparation 1','1 road of Incorparation',100000),
    (2,'Incorparation 2','2 road of Incorparation',200000),
    (3,'Incorparation 3','3 road of Incorparation',300000),
    (4,'Incorparation 4','4 road of Incorparation',400000),
    (5,'Incorparation 5','5 road of Incorparation',500000),
    (6,'Incorparation 6','6 road of Incorparation',600000),
    (7,'Incorparation 7','7 road of Incorparation',700000);

INSERT INTO
    Shareholder (sha_id, sha_lastname, sha_firstname, sha_address)
    VALUES
    (1, 'Dupont', 'Jean', '1 road of Shareholder'),
    (2, 'Durand', 'Marie', '2 road of Shareholder'),
    (3, 'Martin', 'Luc', '3 road of Shareholder'),
    (4, 'Dubois', 'Anne', '4 road of Shareholder'),
    (5, 'Thomas', 'David', '5 road of Shareholder'),
    (6, 'Robert', 'Sylvie', '6 road of Shareholder'),
    (7,'Richard','Bertrand','7 road of Shareholder'),
    (8, 'Petit', 'Claire', '8 road of Shareholder'),
    (9, 'Durif', 'Eric', '9 road of Shareholder'),
    (10,'Lefebvre','Julie','10 road of Shareholder'),
    (11,'Moreau','Thomas','11 road of Shareholder'),
    (12,'Laurent','Sandra','12 road of Shareholder'),
    (13, 'Simon', 'Paul', '13 road of Shareholder'),
    (14,'Michel','Christine','14 road of Shareholder'),
    (15,'Garcia','Julien','15 road of Shareholder'),
    (16,'David','Sophie','16 road of Shareholder'),
    (17,'Bertrand','Vincent','17 road of Shareholder'),
    (18, 'Roux', 'Emilie', '18 road of Shareholder');

INSERT INTO
    Possesses (inc_id, sha_id, action_number)
    VALUES
    (1, 1, 1000),
    (1, 2, 500),
    (1, 3, 250),
    (2, 4, 1000),
    (2, 5, 500),
    (2, 6, 250),
    (3, 7, 1000),
    (3, 8, 500),
    (3, 9, 250),
    (4, 10, 1000),
    (4, 11, 500),
    (4, 12, 250),
    (5, 13, 1000),
    (5, 14, 500),
    (5, 15, 250),
    (6, 16, 1000),
    (6, 17, 500),
    (6, 18, 250);
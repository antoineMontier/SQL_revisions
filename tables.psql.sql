CREATE TABLE IF NOT EXISTS Incorparation (
    inc_id SERIAL PRIMARY KEY,
    inc_name VARCHAR(255) NOT NULL,
    inc_address VARCHAR(255) NOT NULL,
    capital INTEGER NOT NULL
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
    Incorparation (inc_name, inc_address, capital)
VALUES
    ('Incorparation 1','1 road of Incorparation',100000),
    ('Incorparation 2','2 road of Incorparation',200000),
    ('Incorparation 3','3 road of Incorparation',300000),
    ('Incorparation 4','4 road of Incorparation',400000),
    ('Incorparation 5','5 road of Incorparation',500000),
    ('Incorparation 6','6 road of Incorparation',600000),
    ('Incorparation 7','7 road of Incorparation',700000);

INSERT INTO
    Shareholder (sha_lastname, sha_firstname, sha_address)
    VALUES
    ('Dupont', 'Jean', '1 road of Shareholder'),
    ('Durand', 'Marie', '2 road of Shareholder'),
    ('Martin', 'Luc', '3 road of Shareholder'),
    ('Dubois', 'Anne', '4 road of Shareholder'),
    ('Thomas', 'David', '5 road of Shareholder'),
    ('Robert', 'Sylvie', '6 road of Shareholder'),
    ('Richard','Bertrand','7 road of Shareholder'),
    ('Petit', 'Claire', '8 road of Shareholder'),
    ('Durif', 'Eric', '9 road of Shareholder'),
    ('Lefebvre','Julie','10 road of Shareholder'),
    ('Moreau','Thomas','11 road of Shareholder'),
    ('Laurent','Sandra','12 road of Shareholder'),
    ('Simon', 'Paul', '13 road of Shareholder'),
    ('Michel','Christine','14 road of Shareholder'),
    ('Garcia','Julien','15 road of Shareholder'),
    ('David','Sophie','16 road of Shareholder'),
    ('Bertrand','Vincent','17 road of Shareholder'),
    ('Roux', 'Emilie', '18 road of Shareholder');

INSERT INTO
    Possesses (inc_id, sha_id, action_number)
    VALUES
    ((SELECT inc_id FROM Incorparation where inc_name LIKE 'Incorparation 1'), (SELECT sha_id FROM Shareholder WHERE sha_lastname LIKE 'Dupont'), 1000),
    ((SELECT inc_id FROM Incorparation where inc_name LIKE 'Incorparation 1'), (SELECT sha_id FROM Shareholder WHERE sha_lastname LIKE 'Durand'), 500),
    ((SELECT inc_id FROM Incorparation where inc_name LIKE 'Incorparation 1'), (SELECT sha_id FROM Shareholder WHERE sha_lastname LIKE 'Martin'), 250),
    ((SELECT inc_id FROM Incorparation where inc_name LIKE 'Incorparation 2'), (SELECT sha_id FROM Shareholder WHERE sha_lastname LIKE 'Dubois'), 1000),
    ((SELECT inc_id FROM Incorparation where inc_name LIKE 'Incorparation 2'), (SELECT sha_id FROM Shareholder WHERE sha_lastname LIKE 'Thomas'), 500),
    ((SELECT inc_id FROM Incorparation where inc_name LIKE 'Incorparation 2'), (SELECT sha_id FROM Shareholder WHERE sha_lastname LIKE 'Robert'), 250),
    ((SELECT inc_id FROM Incorparation where inc_name LIKE 'Incorparation 3'), (SELECT sha_id FROM Shareholder WHERE sha_lastname LIKE 'Richard'), 1000),
    ((SELECT inc_id FROM Incorparation where inc_name LIKE 'Incorparation 3'), (SELECT sha_id FROM Shareholder WHERE sha_lastname LIKE 'Petit'), 500),
    ((SELECT inc_id FROM Incorparation where inc_name LIKE 'Incorparation 3'), (SELECT sha_id FROM Shareholder WHERE sha_lastname LIKE 'Durif'), 250),
    ((SELECT inc_id FROM Incorparation where inc_name LIKE 'Incorparation 4'), (SELECT sha_id FROM Shareholder WHERE sha_lastname LIKE 'Lefebvre'), 1000),
    ((SELECT inc_id FROM Incorparation where inc_name LIKE 'Incorparation 4'), (SELECT sha_id FROM Shareholder WHERE sha_lastname LIKE 'Moreau'), 500),
    ((SELECT inc_id FROM Incorparation where inc_name LIKE 'Incorparation 4'), (SELECT sha_id FROM Shareholder WHERE sha_lastname LIKE 'Laurent'), 250),
    ((SELECT inc_id FROM Incorparation where inc_name LIKE 'Incorparation 5'), (SELECT sha_id FROM Shareholder WHERE sha_lastname LIKE 'Simon'), 1000),
    ((SELECT inc_id FROM Incorparation where inc_name LIKE 'Incorparation 5'), (SELECT sha_id FROM Shareholder WHERE sha_lastname LIKE 'Michel'), 500),
    ((SELECT inc_id FROM Incorparation where inc_name LIKE 'Incorparation 5'), (SELECT sha_id FROM Shareholder WHERE sha_lastname LIKE 'Garcia'), 250),
    ((SELECT inc_id FROM Incorparation where inc_name LIKE 'Incorparation 6'), (SELECT sha_id FROM Shareholder WHERE sha_lastname LIKE 'David'), 1000),
    ((SELECT inc_id FROM Incorparation where inc_name LIKE 'Incorparation 6'), (SELECT sha_id FROM Shareholder WHERE sha_lastname LIKE 'Bertrand'), 500),
    ((SELECT inc_id FROM Incorparation where inc_name LIKE 'Incorparation 6'), (SELECT sha_id FROM Shareholder WHERE sha_lastname LIKE 'Roux'), 250);
--Detailed list of companies sorted in decreasing order of capital and alphabetically by name
SELECT * FROM Incorporation ORDER BY inc_capital DESC, inc_name ASC;

--Detailed list of companies with capital between 150,000,000 € and 1,000,000,000 €
SELECT * FROM Incorporation WHERE inc_capital > 150000000 AND inc_capital < 1000000000;

--Number of shareholders, the column associated with the result will be renamed "shareholder_number"
SELECT COUNT(*) AS shareholder_number FROM Shareholder

--Average capital of companies whose name starts with the letter 'F'
SELECT AVG(inc_capital) AS avg_capital FROM Incoporation WHERE inc_name LIKE 'F%';

--Identifiers of companies for which Marvin Acme holds shares (using a subquery)
SELECT inc_id FROM Possesses WHERE sha_id IN (SELECT sha_id FROM Shareholder WHERE sha_firstname LIKE 'Marvin' AND sha_lastname LIKE 'Acme');

--Detailed composition of the shareholders of company number 1 (with names and first names of shareholders and number of shares held)
SELECT Shareholder.*, Possesses.action_number FROM Possesses INNER JOIN Shareholder ON (Shareholder.sha_id = Possesses.sha_id) WHERE Possesses.inc_id = 1;

--For each company, number of different shareholders
SELECT Incorportaion.inc_name, COUNT(DISTINCT Possesses.sha_id) FROM Incorporacion INNER JOIN Possesses ON (Incorporacion.inc_id = Possesses.inc_id), 
GROUP BY Incorporacion.inc_id;

--Join of the three tables
SELECT * FROM Incorporacion INNER JOIN Possesses ON (Incorporacion.inc_id = Possesses.inc_id) INNER JOIN Shareholder ON (Possesses.sha_id = Shareholder.sha_id);

--Value of a share of the company "ACME SA", the value of a share corresponds to the capital of the company divided by the total number of shares in circulation
SELECT Incorparation.inc_capital / SUM(Possesses.action_number) FROM Incorparation INNER JOIN Possesses ON (Incorparation.inc_id = Possesses.inc_id)
WHERE Incorparation.inc_name LIKE 'ACME SA';

--Detailed information of the company with the most different shareholders
SELECT Incorporation.*, COUNT(DISTINCT Possesses.sha_id) as different_shareholders
FROM Incorporation
INNER JOIN Possesses ON Incorporation.inc_id = Possesses.inc_id
GROUP BY Incorporation.inc_id
ORDER BY different_shareholders DESC
LIMIT 1;


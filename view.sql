-- creating view

-- query 1
CREATE VIEW DigitalAssetCount AS 
SELECT ActorId, COUNT(AssetType) AS NumberOfAssets 
FROM DigitalAssets
GROUP BY ActorId;

SELECT * FROM DigitalAssetCount;

-- query 2
CREATE VIEW ActorsTwitterAccounts AS
SELECT FirstName, SecondName, URL
FROM Actors
INNER JOIN DigitalAssets  
ON Actors.Id = DigitalAssets.ActorID 
WHERE AssetType = 'Twitter';

-- query 3
CREATE OR REPLACE VIEW ActorsTwitterAccounts AS
SELECT CONCAT(FirstName, ' ', SecondName) AS ActorName, URL
FROM Actors
INNER JOIN DigitalAssets  
ON Actors.Id = DigitalAssets.ActorID 
WHERE AssetType = 'Twitter';

-- updation

CREATE VIEW ActorView AS
SELECT Id, FirstName, SecondName, NetWorthInMillions 
FROM Actors;

-- Query 2
UPDATE ActorView 
SET 
NetWorthInMillions = 250 
WHERE 
Id =1;

-- check option

CREATE VIEW SingleActors AS 
SELECT FirstName, SecondName, DoB, Gender, MaritalStatus, NetWorthInMillions 
FROM Actors 
WHERE MaritalStatus = 'Single';

--  inserting a married actor
INSERT INTO SingleActors (FirstName, SecondName, DoB, Gender, MaritalStatus,  NetWorthInMillions) 
VALUES ('Tom', 'Hanks', '1956-07-09', 'Male', 'Married', 350);

-- putting check in place
CREATE OR REPLACE VIEW SingleActors AS 
SELECT FirstName, SecondName, DoB, Gender, MaritalStatus, NetWorthInMillions 
FROM Actors 
WHERE MaritalStatus = 'Single' 
WITH CHECK OPTION;

-- now trying to add a married actor
INSERT INTO SingleActors (FirstName, SecondName, DoB, Gender, MaritalStatus, NetWorthInMillions) 
VALUES ('Matt', 'Damon', '1970-10-08', 'Male', 'Married', 160);

-- cascadeded check: this will check the conditions mentioned not only for this table but for the one cascaded in it as well
REATE VIEW ActorsView1 AS
SELECT * 
FROM Actors 
WHERE TIMESTAMPDIFF(YEAR, DoB, CURDATE()) > 40; 

CREATE OR REPLACE VIEW ActorsView2 AS
SELECT * 
FROM ActorsView1
WHERE TIMESTAMPDIFF(YEAR, DoB, CURDATE()) < 50;  

-- local check : it will only check the conditions for the current db and not the cascaded one

ALTER VIEW ActorsView2 AS
SELECT * 
FROM ActorsView1
WITH LOCAL CHECK OPTION; 
	
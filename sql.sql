-- CREATING A TABLE
CREATE TABLE STUDENT (  
ID INT NOT NULL,  
NAME VARCHAR (20) NOT NULL,  
AGE INT NOT NULL,  
ADDRESS CHAR (25)
);  
-- CREATING A TABLE USING ANOTHER TABLE
CREATE TABLE STUDENT2 AS 
SELECT * FROM STUDENT;
SELECT * FROM STUDENT2;

-- INSERTING DATA IN THE TABLE
INSERT INTO STUDENT2 (ID,NAME,AGE,ADDRESS) VALUES (10,"ARYAMAN", 23,"SONEIBD");
INSERT INTO STUDENT2 (ID,NAME,AGE,ADDRESS) VALUES (11,"PLAYER2", 13,null);
INSERT INTO STUDENT2 (ID,NAME,AGE,ADDRESS) VALUES (12,"TYPER", 13,"BLURREDDATA");
INSERT INTO STUDENT2 (ID,NAME,AGE,ADDRESS) VALUES (10,"DIEGO COSTA", 43,"BRUH");

SELECT NAME, AGE-4 AS NEWAGE FROM STUDENT2 ORDER BY NAME
SELECT DISTINCT AGE FROM STUDENT2
DELETE FROM STUDENT2 WHERE ID=10;
UPDATE STUDENT2 WHERE ID=11 TO 
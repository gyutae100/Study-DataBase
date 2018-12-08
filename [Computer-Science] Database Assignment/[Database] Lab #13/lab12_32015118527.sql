-- LAB #12-3: ISOLATION LEVEL - 001
INSERT INTO EMPLOYEE VALUES ('Gildong', '', 'Hong', '333666999', TO_DATE('1999-03-21', 'yyyy-mm-dd'), 'KNU CSE', 'M', 40000, NULL, 1);
COMMIT;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
SELECT * FROM EMPLOYEE WHERE SSN = '333666999';

SELECT * FROM EMPLOYEE WHERE Salary BETWEEN 60000 AND 80000;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
SELECT SUM(Salary) FROM EMPLOYEE;

-- LAB #12-3: ISOLATION LEVEL - 002
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

UPDATE EMPLOYEE SET Salary = 70000 WHERE SSN = '333666999';
COMMIT;

SELECT * FROM EMPLOYEE WHERE SSN = '333666999';

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
INSERT INTO EMPLOYEE VALUES ('Younghee', '', 'Kim', '000111222', TO_DATE('1997-05-11', 'yyyy-mm-dd'), 'KNU CSE', 'F', 75000, NULL, 1);
COMMIT;

SELECT * FROM EMPLOYEE WHERE Salary BETWEEN 60000 AND 80000;

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
SELECT SUM(Salary) FROM EMPLOYEE;

INSERT INTO EMPLOYEE VALUES ('Cheolsoo', '', 'Suh', '444777999', TO_DATE('1996-03-31', 'yyyy-mm-dd'), 'KNU CSE', 'M', 60000, NULL, 1);
SELECT SUM(Salary) FROM EMPLOYEE;
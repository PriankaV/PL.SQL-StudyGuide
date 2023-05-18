DECLARE
num1 NUMBER := -5;
num2 NUMBER := 10;
num3 NUMBER := 20;
num4 DECIMAL := 0.2;
BEGIN
dbms_output.put_line(ABS(num1));
dbms_output.put_line(ACOS(num4));
-- COS ACOS COSH SIN ASIN SINH TAN ATAN ATAN2 TANH LN LOG SQRT

dbms_output.put_line(LEAST(num1, num2, num3, num4));
-- LEAST GREATEST

dbms_output.put_line(ROUND(num4));
-- ROUND CEIL FLOOR TRUNC

dbms_output.put_line(SIGN(num2)); 
-- Returns {-1 when x<0},{0 when x=0}, {1 when x>0}

dbms_output.put_line(MOD(num3, num2));
dbms_output.put_line(BITAND(num3, num1));
-- EXP POWER REMAINDER MOD BITAND

END;
----------------------------------------------------------------

CREATE TABLE EMP1
  (EMP_ID  NUMBER  NOT NULL ENABLE,
  EMP_NAME VARCHAR(255)  NOT NULL ENABLE,
  SALARY  NUMBER NOT   NULL ENABLE,
  MGR_ID NUMBER NOT   NULL ENABLE
  );
--Create unique index based on emp_id
  CREATE UNIQUE INDEX EMP1_EMP_ID ON EMP1 (EMP_ID) ;

--create data for employee records
    INSERT INTO EMP1 VALUES(1,'Morana Ermelinde',146500,1);  
    INSERT INTO EMP1 VALUES(2,'Béatrice Vimal',122400,1);
    INSERT INTO EMP1 VALUES(3,'Athanasia Anton',124800,1);
    INSERT INTO EMP1 VALUES(4,'Valeriana Owen',124800,1);
    INSERT INTO EMP1 VALUES(5,'Amir Tamara',110500,1);
    INSERT INTO EMP1 VALUES(6,'Iris Huhana',10400,1);
    INSERT INTO EMP1 VALUES(7,'Read Flann',102000,1);
    INSERT INTO EMP1 VALUES(8,'Sanjay Gupta',100900,1);
    INSERT INTO EMP1 VALUES(3,'Fatma Oda',95500,1);
    INSERT INTO EMP1 VALUES(9,'Dorothy Carin',92250,1);
    INSERT INTO EMP1 VALUES(10,'Valter Vern',91300,1);
    
-- Math Functions using Tables
SELECT AVG(SALARY)
FROM EMP1;

SELECT MAX(SALARY) AS "Highest Salary"
FROM EMP1;
-- AVG MAX MEDIAN MIN 

SELECT COUNT(EMP_NAME)
FROM EMP1;
-- COUNT ROWNUM

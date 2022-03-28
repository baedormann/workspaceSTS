INSERT INTO table(column1, column2, ...)
SELECT value1, value2, ... FROM DUAL
UNION ALL
SELECT value1, value2, ... FROM DUAL
UNION ALL
...
SELECT value1, value2, ... FROM DUAL;
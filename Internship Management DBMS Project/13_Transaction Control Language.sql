-- 1. Create table for TCL testing
CREATE TABLE test_stipend (
    stipend INT
);

-- 2. Insert initial value
INSERT INTO test_stipend
VALUES (10000);

-- 3. Start transaction
START TRANSACTION;

-- 4. Perform updates and create savepoints
UPDATE test_stipend
SET stipend = stipend + 2000;
-- stipend = 12000

SAVEPOINT s1;

UPDATE test_stipend
SET stipend = stipend + 3000;
-- stipend = 15000

SAVEPOINT s2;

UPDATE test_stipend
SET stipend = stipend + 5000;
-- stipend = 20000

SAVEPOINT s3;

-- 5. Rollback to savepoint s2
ROLLBACK TO s2;

-- 6. Check final result
SELECT * FROM test_stipend;
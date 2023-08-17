DELIMITER $$
DROP PROCEDURE IF EXISTS populate_Employee $$
CREATE PROCEDURE populate_Employee()
BEGIN
	START TRANSACTION;
    
    -- Insert Sample Employee data
    INSERT INTO Employee(Name, Salary, BankAccountNumber, NationalInsuranceNumber, Employee_RoleID)
    VALUES('Myles', 65000.00, 12345678, 'PG1234567', 0),
		('Orlaith', 65000.99, 12345678, 'PG1234567', 1),
        ('Kelvin', 64999.99, 12345678, 'PG1234567', 0);
        
	-- Check added rows
    GET DIAGNOSTICS @rows = ROW_COUNT;
    IF @rows != 3 THEN 
    -- Roll back changes
    ROLLBACK;
    SELECT 'Transaction failed, rolling back';
    
    ELSE
		-- happy path
		COMMIT;
        SELECT 'Transaction suceeded';
	END IF;
    

END $$
DROP PROCEDURE IF EXISTS populate_Client $$
CREATE PROCEDURE populate_Client()
BEGIN
	START TRANSACTION;
    
    -- Insert Sample Client data
    INSERT INTO Client(Name, Address, PhoneNumber)
    VALUES('Shaun', '25th somewhere street', '12345678910'),
    ('Glenn', '26th somewhere street', '0987654321');
        
	-- Check added rows
    GET DIAGNOSTICS @rows = ROW_COUNT;
    IF @rows != 2 THEN 
    -- Roll back changes
    ROLLBACK;
    SELECT 'Transaction failed, rolling back';
    
    ELSE
		-- happy path
		COMMIT;
        SELECT 'Transaction suceeded';
	END IF;
END $$
DROP PROCEDURE IF EXISTS populate_Technologies $$
CREATE PROCEDURE populate_Technologies()
BEGIN
	START TRANSACTION;
    
    -- Insert Sample Project data
    INSERT INTO Technologies(Type)
    VALUES('Java');
        
	-- Check added rows
    GET DIAGNOSTICS @rows = ROW_COUNT;
    IF @rows != 1 THEN 
    -- Roll back changes
    ROLLBACK;
    SELECT 'Transaction failed, rolling back';
    
    ELSE
		-- happy path
		COMMIT;
        SELECT 'Transaction suceeded';
	END IF;
END $$
DROP PROCEDURE IF EXISTS populate_TechLead $$
CREATE PROCEDURE populate_TechLead()
BEGIN
	START TRANSACTION;
    
    -- Insert Sample Project data
    INSERT INTO TechLead(EmployeeID, ProjectID)
    VALUES(3,1);
        
	-- Check added rows
    GET DIAGNOSTICS @rows = ROW_COUNT;
    IF @rows != 1 THEN 
    -- Roll back changes
    ROLLBACK;
    SELECT 'Transaction failed, rolling back';
    
    ELSE
		-- happy path
		COMMIT;
        SELECT 'Transaction suceeded';
	END IF;
END $$
DROP PROCEDURE IF EXISTS populate_Project $$
CREATE PROCEDURE populate_Project()
BEGIN
	START TRANSACTION;
    
    -- Insert Sample Project data
    INSERT INTO Project(Name, Value, Completed, TechnologiesID, TechLeadID, ClientID)
    VALUES('Mobile App', 650000, 0, 1, null, 1);
        
	-- Check added rows
    GET DIAGNOSTICS @rows = ROW_COUNT;
    IF @rows != 1 THEN 
    -- Roll back changes
    ROLLBACK;
    SELECT 'Transaction failed, rolling back';
    
    ELSE
		-- happy path
		COMMIT;
        SELECT 'Transaction suceeded';
	END IF;
END $$
DELIMITER ;
CALL populate_Employee();
CALL populate_Client();
CALL populate_Technologies();
CALL populate_Project();

    
    
    
    
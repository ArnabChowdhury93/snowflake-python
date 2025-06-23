-- Warehouse
GRANT USAGE ON WAREHOUSE day1 TO ROLE data_engineer;

-- Database and schema
GRANT USAGE ON DATABASE phase1 TO ROLE data_engineer;
GRANT USAGE ON SCHEMA phase1.python_play TO ROLE data_engineer;
GRANT USAGE ON STAGES IN SCHEMA phase1.python_play TO ROLE data_engineer;

-- Existing objects
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA phase1.python_play TO ROLE data_engineer;
GRANT SELECT, INSERT ON ALL VIEWS IN SCHEMA phase1.python_play TO ROLE data_engineer;
-- Optional write access
GRANT INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA phase1.day1 TO ROLE data_engineer;

-- Future objects
GRANT  SELECT, INSERT, UPDATE, DELETE ON FUTURE TABLES IN SCHEMA phase1.python_play TO ROLE data_engineer;
GRANT SELECT ON FUTURE VIEWS IN SCHEMA phase1.python_play TO ROLE data_engineer;
GRANT USAGE ON FUTURE STAGES IN SCHEMA phase1.python_play TO ROLE data_engineer;
GRANT SELECT ON FUTURE STREAMS IN SCHEMA phase1.python_play TO ROLE data_engineer;
GRANT USAGE ON FUTURE FILE FORMATS IN SCHEMA phase1.python_play TO ROLE data_engineer;
GRANT READ, WRITE ON FUTURE STAGES IN SCHEMA phase1.python_play TO ROLE data_engineer;

GRANT ALL PRIVILEGES ON SCHEMA python_play TO ROLE data_engineer;
SHOW GRANTS ON SCHEMA python_play;

GRANT  SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA phase1.python_play TO ROLE accountadmin;

GRANT READ, WRITE ON STAGE phase1.python_play.my_stage TO ROLE accountadmin;



GRANT ROLE data_engineer TO ROLE accountadmin;

SHOW ROLES;




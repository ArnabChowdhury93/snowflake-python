CREATE WAREHOUSE IF NOT EXISTS day1 
  WAREHOUSE_SIZE = 'XSMALL' 
  AUTO_SUSPEND = 60 
  AUTO_RESUME = TRUE;
USE WAREHOUSE day1;


SHOW DATABASES LIKE 'SNOWFLAKE_SAMPLE_DATA';
USE DATABASE SNOWFLAKE_SAMPLE_DATA;
SHOW SCHEMAS;


create database PHASE1;
create schema PYTHON_PLAY;
create schema day1;


CREATE ROLE IF NOT EXISTS data_engineer;
CREATE USER python_connect
  PASSWORD = 'StrongP@ssw0rd'
    LOGIN_NAME = 'python_connect'
  DEFAULT_ROLE = data_engineer
  DEFAULT_WAREHOUSE = my_wh
  DEFAULT_NAMESPACE = PHASE1.PYTHON_PLAY
  MUST_CHANGE_PASSWORD = FALSE;
;
GRANT ROLE data_engineer TO USER python_connect;

DROP USER eco_ecom_engineer;

-- Retrieve Your Snowflake Account Identifier
SELECT 
  CURRENT_ORGANIZATION_NAME() || '-' || CURRENT_ACCOUNT_NAME() AS account_id_format1,
  CURRENT_ACCOUNT() AS account_locator;

---CHANGE PASSWORD
  ALTER USER python_connect
  SET PASSWORD = 'StrongP@sssads1wd';

select * from test_python_table;




  


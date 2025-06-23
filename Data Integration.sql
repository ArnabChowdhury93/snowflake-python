CREATE OR REPLACE STAGE my_stage;;

select $1 FROM @my_stage/SalesData.csv.gz;

CREATE OR REPLACE FILE FORMAT my_csv_format
    TYPE = 'CSV'
    SKIP_HEADER = 1
;
CREATE OR REPLACE TABLE ecommerce_events (
  event_id STRING,
  event_data VARIANT
);

INSERT INTO ecommerce_events (event_id, event_data)
SELECT 'E1', PARSE_JSON('{"user_id": 101, "action": "view", "product": {"id": 202, "category": "books"}}')
UNION ALL
SELECT 'E2', PARSE_JSON('{"user_id": 102, "action": "purchase", "product": {"id": 205, "category": "electronics"}, "amount": 300}');


SELECT * FROM ecommerce_events;


SELECT 
    event_data:user_id::INT AS user_id,
    event_data:product:id::INT AS product_id
FROM ecommerce_events
;


CREATE TABLE TEST2 
id varchar;






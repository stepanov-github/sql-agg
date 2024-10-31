create table home.ORDERS
(
    id           SERIAL PRIMARY KEY,
    date         TIMESTAMP DEFAULT now(),
    customer_id  int REFERENCES home.CUSTOMERS (id),
    product_name varchar not null,
    amount       int     not null
);
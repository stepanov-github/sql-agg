create table home.CUSTOMERS
(
    id           SERIAL PRIMARY KEY,
    name         varchar not null,
    surname      varchar not null,
    age          int     not null,
    phone_number varchar not null
);
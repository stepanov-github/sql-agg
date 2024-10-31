insert into home.CUSTOMERS
values (DEFAULT, 'Ivan', 'Petrov', 21, '+7910111111'),
       (DEFAULT, 'Ivan', 'Sidorov', 32, '+7926222222'),
       (DEFAULT, 'Aleksey', 'Ivanov', 18, '+79163333333'),
       (DEFAULT, 'aleksey', 'Smirnov', 50, '+79263333333'),
       (DEFAULT, 'Dmitriy', 'Petrov', 31, '+79104444444'),
       (DEFAULT, 'Ivan', 'Aleksandrov', 44, '+79165555555'),
       (DEFAULT, 'Dmitriy', 'Ivanov', 35, '+79266666666'),
       (DEFAULT, 'Ivan', 'Sokolov', 60, '+79037777777');

insert into home.ORDERS
values (DEFAULT, DEFAULT, 3, 'Молоко', 80),
       (DEFAULT, DEFAULT, 6, 'Кефир', 90),
       (DEFAULT, DEFAULT, 4, 'Молоко', 80),
       (DEFAULT, DEFAULT, 7, 'Сметана', 100),
       (DEFAULT, DEFAULT, 5, 'Сыр', 300),
       (DEFAULT, DEFAULT, 3, 'Сыр', 300),
       (DEFAULT, DEFAULT, 4, 'Кефир', 90);
	   
SELECT product_name
FROM home.ORDERS
         JOIN home.customers c on c.id = ORDERS.customer_id
WHERE lower(c.name) = lower('Aleksey');
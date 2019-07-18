1.
a) CREATE TABLE person (
  person_id SERIAL PRIMARY KEY,
  name VARCHAR(150),
  age INTEGER,
  height INTEGER,
  city VARCHAR(200),
  favorite_color VARCHAR(100)
);

b) INSERT INTO person (
  name, age, height, city, favorite_color
  )

  VALUES (
    'Ismail',
    28,
    177,
    'New York',
    'white');

   (
   'Shireen',
    8,
    170,
    'Dragonstone',
    'green');

  (
   'Sansa',
    17,
    175,
    'Winterfell',
    'gray');

  (
   'Melisandre',
    500,
    168,
    'Asshai',
    'red');

  (
   'Daenerys',
    22,
    171,
    'Valyria',
    'blue');

c)
SELECT * FROM person
ORDER BY height DESC

d)
SELECT * FROM person
ORDER BY height ASC

e)
SELECT * FROM person
ORDER BY age DESC

f)
SELECT * FROM person
WHERE age > 20;

g)
SELECT * FROM person
WHERE age = 18;

h)
SELECT * FROM person
WHERE age < 20 OR age > 30;

i)
SELECT * FROM person
WHERE age != 27;

j)
SELECT * FROM person
WHERE favorite_color != 'red';

k)
SELECT * FROM person
WHERE favorite_color != 'red' AND favorite_color != 'blue';

L)
SELECT * FROM person
WHERE favorite_color = 'orange' OR favorite_color = 'green';

m)
SELECT * FROM person
WHERE favorite_color IN ('orange', 'green', 'blue');

n)
SELECT * FROM person
WHERE favorite_color IN ('purple', 'yellow');

2.
a)
CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  person_id VARCHAR(100),
  product_name VARCHAR(100),
  product_price DECIMAL,
  quantity INTEGER
);

b)
INSERT INTO orders (
  person_id,
  product_name,
  product_price,
  quantity
  )

VALUES (
    ‘ig’,
    ‘photos’,
    1.99,
    1,)

 (
    ‘fb’,
    ‘timeline’,
    2.50,
    2
    )

 (
    ‘tw’,
    ‘tweets’,
    0.75,
    1
    )

 (
    ‘yt’,
    ‘videos’,
    1.25,
    3
    )

 (
    'ello',
    'status',
    0.25,
    1
    )

c)
SELECT * FROM orders;

d)
SELECT SUM(quantity) FROM orders;

e)
SELECT SUM(product_price * quantity) FROM orders;

f)
SELECT SUM(product_price * quantity) FROM orders
WHERE person_id = ‘fb’;

3.
a) INSERT INTO artist (
  name
  )

  VALUES (
    ‘Bad Bunny’
    )

  (
    ‘J Balvin’
    )

  (
    ‘Dalex’
    )

b)
SELECT * FROM artist
ORDER BY name DESC LIMIT 10;

c)
SELECT * FROM artist
ORDER BY name ASC LIMIT 5;

e)
SELECT * FROM artist
WHERE name LIKE 'Black%';

f)
SELECT * FROM artist
WHERE name LIKE '%Black%';

4.
a)
SELECT first_name, last_name, city FROM employee
WHERE city LIKE 'Calgary';

b)
SELECT MAX(birth_date) FROM employee;

c)
SELECT MIN(birth_date) FROM employee;

d)
SELECT * FROM employee
WHERE reports_to = 2;

e)
SELECT count(*) FROM employee
WHERE city LIKE 'Lethbridge';

5.
a)
SELECT count(*) FROM invoice
WHERE billing_country = 'USA'

b)
SELECT MAX(total) FROM invoice;

c)
SELECT MIN(total) FROM invoice;

d)
SELECT * FROM invoice
WHERE total > 5;

e)
SELECT count(*) FROM invoice
WHERE total < 5;

f)
SELECT count(*) FROM invoice
WHERE billing_state in ('CA', 'TX', 'AZ');

g)
SELECT AVG(total) FROM invoice;

h)
SELECT SUM(total) FROM invoice;

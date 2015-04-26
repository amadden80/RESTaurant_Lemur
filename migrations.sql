CREATE DATABASE restaurant_pos;
\c restaurant_pos

CREATE TABLE foods (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  cents INTEGER,
  cuisine VARCHAR(255)
);

CREATE TABLE parties (
  id SERIAL PRIMARY KEY,
  table_number INTEGER,
  is_paid BOOLEAN
);

CREATE TABLE orders (
  id SERIAL PRIMARY KEY,
  party_id INTEGER,
  food_id INTEGER
);

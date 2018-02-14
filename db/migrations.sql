DROP DATABASE IF EXISTS establishment;

CREATE DATABASE establishment;

\c establishment

CREATE TABLE restaurants(
	id SERIAL PRIMARY KEY,
	name VARCHAR(125),
	description VARCHAR(250),
	location VARCHAR(125)
);

CREATE TABLE bars(
	id SERIAL PRIMARY KEY,
	name VARCHAR(125),
	description VARCHAR(250),
	location VARCHAR(125)
);

CREATE TABLE places(
	id SERIAL PRIMARY KEY,
	restaurant_id INT REFERENCES restaurants(id),
	bar_id INT REFERENCES bars(id),	
	age BOOLEAN,
	food BOOLEAN
);
database est2


-- neighborhoods
-- 	id
-- 	name

-- places
-- 	id
-- 	name
-- 	is_bar
-- 	is_rest
-- 	neighborhood_id references nieghbrodh(id)
--  requires over 22 bool



-- neighborhood has many places

-- '/LP/bars'
-- '/:neigh_id/bars'

-- @neigh = find('neigh_id')
-- @results = @neigh.where(bars=true).where(rest=true)

DROP DATABASE IF EXISTS establishment;

CREATE DATABASE establishment;

\c establishment



-- CREATE TABLE restaurants(
-- 	id SERIAL PRIMARY KEY,
-- 	name VARCHAR(125),
-- 	description VARCHAR(250),
-- 	location VARCHAR(125)
-- 	neighborhood_id VARCHAR(125) REFERENCES neighborhoods(id)
-- );

-- CREATE TABLE bars(
-- 	id SERIAL PRIMARY KEY,
-- 	name VARCHAR(125),
-- 	description VARCHAR(250),
-- 	neighborhood_id VARCHAR(125) REFERENCES neighborhoods(id)
-- );

CREATE TABLE neighborhoods(
	id SERIAL PRIMARY KEY,
	name VARCHAR(250)
);

CREATE TABLE places(
	id SERIAL PRIMARY KEY,
	name VARCHAR(125),
	description VARCHAR(250),
	cuisine VARCHAR(125),
	neighborhood_id INT REFERENCES neighborhoods(id),
	restaurant BOOLEAN,
	bar BOOLEAN,
	age BOOLEAN
);

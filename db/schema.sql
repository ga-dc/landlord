-- DROP TABLE IF EXISTS


CREATE TABLE tenants (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  age INTEGER,
  gender VARCHAR,
  apartment_id INTEGER
);

CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  address VARCHAR,
  monthly_rent VARCHAR,
  sqft VARCHAR,
  num_beds INTEGER,
  num_baths INTEGER
);

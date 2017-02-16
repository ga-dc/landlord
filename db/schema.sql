DROP TABLE IF EXISTS tenants;
DROP TABLE IF EXISTS apartments;

CREATE TABLE tenants (
  id SERIAL PRIMARY KEY,
  name VARCHAR,
  age INTEGER,
  gender VARCHAR,
  apartment_id VARCHAR
);

CREATE TABLE apartments(
  id SERIAL PRIMARY KEY,
  address VARCHAR,
  monthly_rent VARCHAR,
  sqft VARCHAR,
  num_beds INTEGER,
  num_baths INTEGER

);

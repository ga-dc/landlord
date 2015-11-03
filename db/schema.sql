CREATE TABLE tenants(
  id SERIAL PRIMARY KEY,
  name TEXT,
  age INT,
  gender TEXT,
  aparment_id INT FOREIGN KEY
);

CREATE TABLE apartments(
  id SERIAL PRIMARY KEY,
  address TEXT,
  monthly_rent INT,
  sqft INT,
  num_beds INT,
  num_baths INT
);

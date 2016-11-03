DROP TABLE IF EXISTS tenants;
DROP TABLE IF EXISTS apartments;

CREATE TABLE tenants(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  age TEXT,
  gender TEXT,
  apartment_id TEXT
);

CREATE TABLE apartments(
  id SERIAL PRIMARY KEY,
  address TEXT NOT NULL,
  monthly_rent TEXT,
  sqft TEXT,
  num_beds TEXT,
  num_baths TEXT
);

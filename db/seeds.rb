require 'active_record'
require 'pg'
require_relative 'connection'
require_relative '../models/apartment'
require_relative '../models/tenant'


Tenant.destroy_all
Apartment.destroy_all

amaya = Apartment.create(address: "4377 Amaya Way", monthly_rent: 2500, sqft: 200, num_beds: 4, num_baths: 3)
tafalla = Apartment.create(address: "569 Tafalla Lane", monthly_rent: 2100, sqft: 190, num_beds: 2, num_baths: 1)
corte = Apartment.create(address: "788 Corte Court", monthly_rent: 2200, sqft: 180, num_beds: 3, num_baths: 2)

Tenant.create(name: 'Blake Lively', age: 30, gender: 'Male', apartment_id: 20)
Tenant.create(name: 'Monty Jones', age: 32, gender: 'Male', apartment_id: 20)
Tenant.create(name: 'Jared Lake', age: 25, gender: 'Male', apartment_id: 21)
Tenant.create(name: 'Lisa Parker', age: 30, gender: 'Female', apartment_id: 21)
Tenant.create(name: 'Josi Marie', age: 40, gender: 'Female', apartment_id: 22)
Tenant.create(name: 'Lee Green', age: 50, gender: 'Female', apartment_id: 22)
Tenant.create(name: 'Mark Mammle', age: 40, gender: 'Male', apartment_id: 22)
Tenant.create(name: 'Andy Fofany', age: 70, gender: 'Male', apartment_id: 3)
Tenant.create(name: 'Eva Wally', age: 91, gender: 'Female', apartment_id: 3)

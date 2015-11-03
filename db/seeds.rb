require "bundler/setup"
require "pg"
require "active_record"
require "pry"

require_relative "../db/connection"
require_relative "../models/apartments"
require_relative "../models/tenants"

Apartment.destroy_all
Tenant.destroy_all

Apartment.create(address:"123 ABC Street", monthly_rent:100000000, sqft:200, num_beds:12, num_baths:0)
Apartment.create(address:"4000 Dead End", monthly_rent:1000, sqft:20000, num_beds:2, num_baths:10)
Apartment.create(address:"1 No Name", monthly_rent:10, sqft:40, num_beds:5, num_baths:5)

Tenant.create(name:"Bill",age:20,gender:"Male",apartment_id:1)
Tenant.create(name:"Bobby",age:82,gender:"Male",apartment_id:1)
Tenant.create(name:"Thelma",age:65,gender:"Female",apartment_id:3)
Tenant.create(name:"Roger",age:40,gender:"Male",apartment_id:2)
Tenant.create(name:"Mary",age:20,gender:"Female",apartment_id:3)
Tenant.create(name:"Wendy",age:99,gender:"Female",apartment_id:2)
Tenant.create(name:"Jim",age:20,gender:"Male")
Tenant.create(name:"Gladys",age:100,gender:"Female")
Tenant.create(name:"Henry",age:90,gender:"Male")
Tenant.create(name:"Buck",age:10,gender:"Male")

### NOTE: Make sure you've loaded the seeds.sql file into your DB before starting
### this exercise

require "pg" # postgres db library
require "active_record" # the ORM
require "pry" # for debugging

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :database => "landlord"
)

class Tenant < ActiveRecord::Base
  belongs_to :apartment
end

class Apartment < ActiveRecord::Base
  has_many :tenants
end

################################################
#### NOTE: DON'T MODIFY ABOVE THIS LINE     ####
################################################


################################################
# FINDING / SELECTING
################################################

# Hint, the following methods will help: `where`, `all`, `find`, `find_by`

# Use Active record to do the following, and store the results **in a variable**
# example: get every tenant in the DB
all_tenants = Tenant.all

# get the first tenant in the DB
first_tenant = Tenant.first
# get all tenants older than 65
older_than_65 = Tenant.where("age > ?", 65)

# get all apartments whose price is greater than $2300
greater_than_twentythree = Apartment.where("monthly_rent > ?", 2300)

# get the apartment with the address "6005 Damien Corners"
certain_apartment = Apartment.find_by(address: "6005 Damien Corners")
# get all tenants in that apartment
certain_apartment.tenants
# Use `each` and `puts` to:
# Display the name and ID # of every tenant
Tenant.all.each do |tenant|
  puts "#{tenant.name} and #{tenant.id}"
end
# Iterate over each apartment, for each apartment, display it's address and rent price
Apartment.all.each do |apartment|
  puts "#{apartment.address} and #{apartment.monthly_rent}"
end
# Iterate over each apartment, for each apartment, display it's address and all of it's tenants
Apartment.all.each do |apartment|
  puts "#{apartment.address} and #{apartment.tenants.inspect}"
end
################################################
# CREATING / UPDATING / DELETING
################################################

# Hint, the following methods will help: `new`, `create`, `save`, `uddate`, `destroy`

# Create 3 new apartments, and save them to the DB
apartment1 = Apartment.create(address: "Heyo Heyo",  monthly_rent: 2000, sqft: 2000, num_beds: 2000, num_baths: 2000)
apartment2 = Apartment.create(address: "Heyo Heyo",  monthly_rent: 2000, sqft: 2000, num_beds: 2000, num_baths: 2000)
apartment3 = Apartment.create(address: "Heyo Heyo",  monthly_rent: 2000, sqft: 2000, num_beds: 2000, num_baths: 2000)

# Create at least 9 new tenants and save them to the DB. (Make sure they belong to an apartment)
jon = Tenant.create(name: "Jon Jon", age: 70, gender: 'Male', apartment_id: 1)
steve = Tenant.create(name: "Jon Jon", age: 70, gender: 'Male', apartment_id: 2)
mark = Tenant.create(name: "Jon Jon", age: 70, gender: 'Male', apartment_id: 3)
jan = Tenant.create(name: "Jon Jon", age: 70, gender: 'Male', apartment_id: 4)
jorp = Tenant.create(name: "Jon Jon", age: 70, gender: 'Male', apartment_id: 1)
jap = Tenant.create(name: "Jon Jon", age: 70, gender: 'Male', apartment_id: 2)
jeepy = Tenant.create(name: "Jon Jon", age: 70, gender: 'Male', apartment_id: 3)
jimjam = Tenant.create(name: "Jon Jon", age: 70, gender: 'Male', apartment_id: 4)
jappjapp = Tenant.create(name: "Jon Jon", age: 70, gender: 'Male', apartment_id: 1)

# Note: you'll use this little bit of code as a `seeds.rb` file later on.

# Birthday!
# It's Kristin Wisoky's birthday. Find her in the DB and change her age to be 1 year older
# Note: She's in the seed data, so she should be in your DB
kristin = Tenant.find_by(name: "Kristin Wisoky");
kristin.update(age: 24)
# Rennovation!
# Find the apartment "62897 Verna Walk" and update it to have an additional bedroom
verna = Apartment.find_by(address: "62897 Verna Walk");
verna.update(num_beds: 3)

# Make sure to save the results to your database

# Rent Adjustment!
# Update the same apartment that you just 'rennovated'. Increase it's rent by $400
# to reflect the new bedroom
verna.update(monthly_rent: 2800)
# Millenial Eviction!
# Find all tenants who are under 30 years old
# Delete their records from the DB

millenials = Tenant.where("age<?", 30)
millenials.destroy_all
end

binding.pry
puts "end of app"

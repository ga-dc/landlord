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
# all_tenants = Tenant.all

# get the first tenant in the DB
# first_tenant = Tenant.first
# get all tenants older than 65
# old_tenants = Tenant.where('age > 65')
# get all apartments whose price is greater than $2300
# expensive_apartments = Apartment.where('monthly_rent > 2300')
# get the apartment with the address "6005 Damien Corners"
# apartment_6005 = Apartment.find_by(address: '6005 Damien Corners')
# get all tenants in that apartment
# apartment_6005_tenants = Apartment.find_by(address: '6005 Damien Corners').tenants
# Use `each` and `puts` to:
# Display the name and ID # of every tenant
# Tenant.all.each do |ten|
#   puts ten.name, ten.id
# end
# Iterate over each apartment, for each apartment, display it's address and rent price
# Apartment.all.each do |apt|
#   puts apt.address, apt.monthly_rent
# end
# Iterate over each apartment, for each apartment, display it's address and all of it's tenants
# Apartment.all.each do |apt|
#   puts apt.address, apt.tenants.map{ |ten| ten.name}.join(', ')
# end
################################################
# CREATING / UPDATING / DELETING
################################################

# Hint, the following methods will help: `new`, `create`, `save`, `uddate`, `destroy`

# Create 3 new apartments, and save them to the DB
# Create at least 9 new tenants and save them to the DB. (Make sure they belong to an apartment)
# Note: you'll use this little bit of code as a `seeds.rb` file later on.
# Apartment.create(address: '1233 Brandywine Ln', monthly_rent: 900, sqft: 1200, num_beds: 3, num_baths: 5)
# Apartment.create(address: '1160 First Street', monthly_rent: 1200, sqft: 1800, num_beds: 2, num_baths: 3)
# Apartment.create(address: '1820 Jackson Street', monthly_rent: 850, sqft: 1000, num_beds: 3, num_baths: 4)
#
# Tenant.create(name: 'Andrew Whitley', age: 24, gender: 'male', apartment_id: 1)
# Tenant.create(name: 'Mark Cuban', age: 44, gender: 'male', apartment_id: 1)
# Tenant.create(name: 'Mark Zuckerberg', age: 32, gender: 'male', apartment_id: 1)
# Tenant.create(name: 'Julio Jones', age: 28, gender: 'male', apartment_id: 2)
# Tenant.create(name: 'Nick Saban', age: 62, gender: 'male', apartment_id: 2)
# Tenant.create(name: 'Marcus Calpakis', age: 25, gender: 'male', apartment_id: 2)
# Tenant.create(name: 'Merrian Webster', age: 99, gender: 'male', apartment_id: 3)
# Tenant.create(name: 'Samuel Adams', age: 99, gender: 'male', apartment_id: 3)
# Tenant.create(name: 'Barrack Obama', age: 58, gender: 'male', apartment_id: 3)


# Birthday!
# It's Kristin Wisoky's birthday. Find her in the DB and change her age to be 1 year older
# Note: She's in the seed data, so she should be in your DB
kristin = Tenant.find_by(name: "Kristin Wisoky")
kristin.update(age: kristin.age + 1)

# Rennovation!
# Find the apartment "62897 Verna Walk" and update it to have an additional bedroom
# Make sure to save the results to your database
verna = Apartment.find_by(address: "62897 Verna Walk")
verna.update(num_beds: verna.num_beds + 1)

# Rent Adjustment!
# Update the same apartment that you just 'rennovated'. Increase it's rent by $400
to reflect the new bedroom
verna.update(monthly_rent: verna.monthly_rent + 400)

# Millenial Eviction!
# Find all tenants who are under 30 years old
# Delete their records from the DB
millenials = Tenant.where('age < 30')
millenials.destroy_all

binding.pry

require_relative "db/connection"
require_relative "models/apartment"
require_relative "models/tenant"
# require "pg" # postgres db library
# require "active_record" # the ORM
require "pry" # for debugging

# ActiveRecord::Base.establish_connection(
#   :adapter => "postgresql",
#   :database => "landlord"
# )
#
# class Tenant < ActiveRecord::Base
#   belongs_to :apartment
# end
#
# class Apartment < ActiveRecord::Base
#   has_many :tenants
# end
# NOTE: Uncomment the lines below to verify that your seed script is working

# puts "There are #{Apartment.count} apartments"
# puts "There are #{Tenant.count} tenants"
#
# puts "*" * 50
#
# puts "The first apartment is at #{Apartment.first.address}."
# puts "It has  #{Apartment.first.tenants.count} tenants."

binding.pry

puts "ignore this line, it's just here so the binding.pry above works"

require 'pry'
require 'pg'
require 'active_record'


require_relative "db/connection"
require_relative "models/apartment"
require_relative "models/tenant"



# NOTE: Uncomment the lines below to verify that your seed script is working

puts "There are #{Apartment.count} apartments"
puts "There are #{Tenant.count} tenants"

puts "*" * 50

puts "The first apartment is at #{Apartment.first.address}."
puts "It has  #{Apartment.first.tenants.count} tenants."

Tenant.all.each do |tenant|
  puts "here is #{tenant.name} and their id, #{tenant.id}"
end

binding.pry

puts "ignore this line, it's just here so the binding.pry above works"

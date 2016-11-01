require_relative "db/connection"
require_relative "models/apartment"
require_relative "models/tenant"

# NOTE: Uncomment the lines below to verify that your seed script is working

puts
"-------------------------------\n
Apartment Management Application\n
-------------------------------\n
Select one of the following options:\n
1 -> View All Apartments\n
2 -> View All Tenants\n
3 -> View All Occupied Apartments\n"

user_input = gets.chomp.to_i

puts "You have selected option: #{user_input}"

if user_input == 1

  apartments.each {|apartment| puts "#{apartment_id}, #{apartment.monthly_rent}, #{apartment.address}"}

elsif user_input == 2

  tenants.each {|tenant| puts "#{tenant.name}, age:#{tenant.age}"}

else user_input== 3

  apartments.each do |apartment|
    puts apartment[:address]
    tenant = tenants.select {|tenant| tenant[:apartment_id] == apartment[:id]}
    tenant.each do |tenant|
      puts tenant[:name]
    end
  end
end


# puts "There are #{Apartment.count} apartments"
# puts "There are #{Tenant.count} tenants"
#
# puts "*" * 50
#
# puts "The first apartment is at #{Apartment.first.address}."
# puts "It has  #{Apartment.first.tenants.count} tenants."

binding.pry

puts "ignore this line, it's just here so the binding.pry above works"

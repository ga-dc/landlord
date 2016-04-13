require "bundler/setup" # require all the gems we'll be using for this app from the Gemfile. Obviates the need for `bundle exec`
require "pg" # postgres db library
require "active_record" # the ORM
require "pry" # for debugging

require_relative "db/connection"
require_relative "models/apartments"
require_relative "models/tenants"


puts "There are #{Apartment.count} apartments"
puts "There are #{Tenant.count} tenants"

puts "*" * 50

puts "The first apartment is at #{Apartment.first.address}."
puts "It has  #{Apartment.first.tenants.count} tenants."


puts "*" * 50
puts "Hello welcome to this app."
puts "Type '1' to view all of your apartments"
puts "Type '2' to view all of your tenants"
puts "Type '3' to view all apartments and their associated tenants"
track_number = gets.chomp

if track_number == "1"
  Apartment.all.each do |apt|
    puts "ID: #{apt.id} Address: #{apt.address} Rent: #{apt.monthly_rent}" # etc
  end

elsif track_number == "2"
    Tenant.all.each do |person|
      puts "Name: #{person.name} Age: #{person.age}" # etc
  end

elsif track_number == "3"

  all_apts = Apartment.all

  all_apts.each do |apt|
    puts nil
    puts "Address #{apt.address}"
    puts nil
    apt.tenants.each do |person|
      puts "Tenant Name: #{person.name}"
    end
  end

else
  puts "Hello welcome to this app."
  puts "Type '1' to view all of your apartments"
  puts "Type '2' to view all of your tenants"
  puts "Type '3' to view all apartments and their associated tenants"
end

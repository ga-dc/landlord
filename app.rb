require 'pry'
require 'pg'
require 'active_record'

require_relative "db/connection"
require_relative "models/apartment"
require_relative "models/tenant"




class Menu
  def self.display
    while 1
      puts "Choose one of the following:"
      puts "1 - List of Apartments"
      puts "2 - List of Tenants"
      puts "3 - Tenants in Apartment"
      puts "4 - Quit"
      input = gets.chomp
      if input == "1"
        Apartment.all.each do |apt|
          puts apt.address
        end
        sleep(1)
      elsif input == "2"
        Tenant.all.each do |ten|
          puts ten.name
        end
        sleep(1)
      elsif input == "3"
        Apartment.all.each do |apt|
          @tenants = apt.tenants.map {|ten| ten.name}
          puts "#{@tenants.join(", ")} are in #{apt.address}"
        end
        sleep(1)
      elsif input == "4"
        puts "Goodbye"
        break
      else
        puts "Please try again"
        sleep(1)
      end
    end
  end
end


Menu.display



binding.pry
puts "done"

class Tenant < ActiveRecord::Base
  belongs_to :apartment
end

# class Tenant
#
#   def initialize name, age, gender
#     @name = name
#     @age = age
#     @gender = gender
#   end
#
# end

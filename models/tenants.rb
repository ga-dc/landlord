class Tenant < ActiveRecord::Base
  belongs_to :apartment
  # attr_reader :name, :age, :gender
  # def initialize(name, age, gender)
  #   @name = name
  #   @age = age
  #   @gender = gender
  # end
end

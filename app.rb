require "bundler/setup"
require "active_record"

require "pg"
require "pry"

require_relative "db/connection"

require_relative 'controllers/apartments_controllers.rb'
require_relative 'tenants_controllers.rb'

require_relative "models/apartment"
require_relative "models/tenant"

get '/' do
  erb :apartments
end

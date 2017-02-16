require "pg" # postgres db library
require "active_record" # the ORM
require "pry" # for debugging

ActiveRecord::Base.establish_connection(
  :database => "landlord",
  :adapter => "postgresql"
)

# # Fix an issue with sinatra and Active Record where connections are left open
# if defined? Sinatra
# 	after do
# 	  ActiveRecord::Base.connection.close
# 	end
# end

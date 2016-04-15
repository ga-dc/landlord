require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
require 'pg'
require 'pry'
require 'bundler/setup'

require_relative "db/connection"
require_relative "models/apartment"
require_relative "models/tenant"


get "/" do
  @apartments = Apartment.all
  erb(:"apartments/index")
end

get "tenants/:id" do
  @tenant = Tenant.find(params[:id])
  erb(:"tenants/show")
end

get "/apartments/new" do
  @apartments = Apartment.all
  erb(:"apartments/new")
end

get "/apartments/:id" do
  @apartment = Apartment.find(params[:id])
  @tenants = @apartment.tenants
  erb(:"apartments/show")
end

post '/' do
  @apartment = Apartment.create(address: params[:address], monthly_rent: params[:monthly_rent], sqft: params[:sqft], num_beds: params[:num_beds], num_baths: params[:num_baths])
  redirect "/apartments/#{@apartment.id}"
end

get "/apartments/:id/edit" do
  @apartment = Apartment.find(params[:id])
  erb(:"apartments/edit")
end

put "/apartments/:id" do
  @apartment = Apartment.find(params[:id])
  @apartment.update(params[:apartment])
  redirect("/apartments/#{@apartment.id}")
end

delete '/apartments/:id' do
  @apartment = Apartment.find(params[:id])
  @apartment.destroy
  redirect("/")
end

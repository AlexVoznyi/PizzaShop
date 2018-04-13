#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:pizzashop.db"

class Product < ActiveRecord::Base
end

get '/' do
	erb :index			
end

get '/about' do
	erb :about			
end

get '/products' do
	erb :products			
end

get '/item/:id' do
	erb :item			
end

get '/home' do
	erb :home
end

get '/cart' do
	erb :cart
end

post '/cart' do
	@order = params[:orders]
	@error = @order
	erb :cart
end

get '/order' do
	erb :order
end

post '/order' do
	erb :order
end

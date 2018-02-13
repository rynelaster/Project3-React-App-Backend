class RestaurantController < ApplicationController

	get '/' do
		@restaurants = Restaurant.all
		@restaurants.to_json
	end

	post '/' do
		@restaurant = Restaurant.new
		@restaurant.name = params[:name]
		@restaurant.save
		@restaurant.to_json
	end

	put '/:id' do
		@restaurant = Restaurant.find params[:id]
		@restaurant.name = params[:name]
		@restaurant.save
		@restaurant.to_json
	end

	delete '/:id' do
		@restaurant = Restaurant.find params[:id]
		restaurant = @restaurant.name
		@restaurant.delete
		{
			message: "Restaurant #{restaurant} deleted"
		}.to_json
	end











end
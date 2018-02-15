class RestaurantController < ApplicationController


# this route goes to '/restaurants'
	get '/' do 

		@restaurants = Place
			.joins(:neighborhood)
			.select('places.id,places.name,places.description,neighborhoods.id as neighborhood_id,neighborhoods.name as location')
			.where(bar: true, restaurant: true)
		@restaurants.to_json
	end

	get '/neighborhoods/:id' do

		@restaurants = Place
			.joins(:neighborhood)
			.select('places.id,places.name,places.description,neighborhoods.id as neighborhood_id,neighborhoods.name as location')
			.where(bar: true, restaurant: true, neighborhood_id: params[:id].to_i) 
		
		@restaurants.to_json
	end



	# get '/' do 
	# 	@restaurants = Restaurant.all
	# 	@restaurants.to_json
	# 	# p 'hey show me this'
	# end

	get '/:id' do
		@restaurants = Restaurant.find params[:id]
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
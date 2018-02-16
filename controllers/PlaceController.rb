class PlaceController < ApplicationController

	get '/' do 
		@places = Place.all
		@places.to_json
	end

	get '/:id' do 
		@places = Place.find params[:id]
		@places.to_json
	end


	# Add a new place
	post '/' do
		@places = Place.new
		@places.name = params[:name]
		@places.description = params[:description]
		@places.cuisine = params[:cuisine]
		@places.location = params[:neighborhood_id]
		@places.restaurant = params[:restaurant]
		@places.bar = params[:bar]
		@places.age = params[:age]
		@places.save
		@places.to_json
	end



	




















end
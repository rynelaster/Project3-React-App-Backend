class PlaceController < ApplicationController

	get '/' do 
		@places = Place.all
		@places.to_json
	end

	get '/:id' do 
		@places = Place.find params[:id]
		@places.to_json
	end



	




















end
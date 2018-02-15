class BarController < ApplicationController
	
	# get '/' do
	# 	@bars = Bar.all
	# 	@bars.to_json
	# end

	get '/' do
		# @bars = Place.where(bar: true, restaurant: false)
		@bars = Place
			.joins(:neighborhood)
			.select('places.id,places.name,places.description,neighborhoods.id as neighborhood_id,neighborhoods.name as location')
			.where(bar: true, restaurant: false) # thanks https://stackoverflow.com/a/22312979/8503076
		@bars.to_json
	end

	# this route maps to '/bars/neighborhoods/:id'
	get '/neighborhoods/:id' do 

		@bars = Place
			.joins(:neighborhood)
			.select('places.id,places.name,places.description,neighborhoods.id as neighborhood_id,neighborhoods.name as location')
			.where(bar: true, restaurant: false, neighborhood_id: params[:id].to_i)

		@bars.to_json

	end

	# get '/' do
	# 	@bars = Places.where(bar: true & rest==false)
	# 	bars.to_json
	# end
# NEIGHTBORODD CONTROLLER
# 	get '/:id/bars' do 
# 		@bars_in_neigh = Places.where(n_id=:id).where(bars=true).where(Rest=false)
# 		.to to_json
# 	end

# 	get '/:nid/both' do
# 		@both_in_neigh = places where nid and bars and rest
# 	end

# 	get '/:nid/rest' do
# 		rest in neigh = places where nid and rest and bar = false
# 		.to_josn
# 	end

# 	get '/asdf/:nid/rest/:age_flag' do
# 		# 'over21'
# 		if :ageflag == over21
# 			rest in neigh = places were nid and rest =true and bar = false and over_21==true
# 		else 
# 			rest in neigh = places where nid = 

# -----


	get '/:id' do
		@bars = Bar.find params[:id]
		@bars.to_json
	end 

	post '/' do
		@bar = Bar.new
		@bar.name = params[:name]
		@bar.save
		@bar.to_json
	end

	put '/:id' do
		@bar = Bar.find params[:id]
		@bar.name = params[:name]
		@bar.save
		@bar.to_json
	end

	delete '/:id' do
		@bar = Bar.find params[:id]
		bname = @bar.name
		@bar.delete
		{
			message: "Bar #{bname} deleted"
		}.to_json
	end









	
end
class BarController < ApplicationController
	
	get '/' do
		@bars = Bar.all
		@bars.to_json
	end

	# get '/' do
	# 	@bars = Places.where(bar: true)
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
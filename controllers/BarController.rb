class BarController < ApplicationController
	
	get '/' do
		@bars = Bar.all
		@bars.to_json
	end

	get '/:id/' do
		@bar = Bar.find params[:id]
		stuff = @bar.itemorders
		stuff.to_json
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
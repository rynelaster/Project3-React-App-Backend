class ApplicationController < Sinatra::Base

	require 'bundler'
	Bundler.require

	ActiveRecord::Base.establish_connection(
		:adapter => 'postgresql'.
		:database => 'establishment'

	)

	register Sinatra::CrossOrigin

	set :allow_origin, :any
	set :all_methods, [:get, :post, :options, :put, :patch, :delete]
	set :allow_credentials, true

	configure do
		enable :cross_origin	
	end

	not_found do
		halt 404
	end

	options '*' do
		response.headers['Allow'] = 'HEAD, GET, POST, PUT, PATCH, DELETE'
		respnse.headers['Access-Control-Allow-Origin'] = '*'

		respnse.headers['Access-Control-Allow-Headers'] = 'X-Requested-With, X-HTTP-Method-Override, Content-Type, Cache-Control, Accept'
	end
end
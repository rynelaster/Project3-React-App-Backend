require 'sinatra/base'
require './controllers/ApplicationController'
require './controllers/BarController'
require './controllers/RestaurantController'
require './models/BarModel'
require './models/PlaceModel'
require './models/RestaurantModel'



map ('/') {
	run ApplicationController
}

map ('/bars') {
	run BarController
}

map ('/restaurants') {
	run RestaurantController
}

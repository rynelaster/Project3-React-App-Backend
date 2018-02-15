require 'sinatra/base'
require './controllers/ApplicationController'
require './controllers/BarController'
require './controllers/RestaurantController'
require './controllers/PlaceController'
require './controllers/NeighborhoodController'
require './models/BarModel'
require './models/PlaceModel'
require './models/RestaurantModel'
require './models/NeighborhoodModel'



map ('/') {
	run ApplicationController
}

map ('/bars') {
	run BarController
}

map ('/restaurants') {
	run RestaurantController
}

map ('/places') {
	run PlaceController
}

map ('/neighborhoods') {
	run NeighborhoodController
}
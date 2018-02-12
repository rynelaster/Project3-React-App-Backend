class Place < ActiveRecord::Base

	has_many :restaurants
	has_many :bars

end
class Movie < ActiveRecord::Base
	attr_accessible :title, :rating, :descriiption, :release_date
end

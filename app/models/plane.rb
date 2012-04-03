class Plane < ActiveRecord::Base

	validates :tail_number, :presence => true

end

class Plane < ActiveRecord::Base

	validates :tail_number, :model, :presence => true
end

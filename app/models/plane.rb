class Plane < ActiveRecord::Base

	has_many :entry

	validates :tail_number, :model, :presence => true
end

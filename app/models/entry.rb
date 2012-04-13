class Entry < ActiveRecord::Base
	belongs_to :plane

	validates :flown, :plane, :from, :to, :takeoffs, :landings, :total_flight, :presence => true
end

module PlanesHelper

	def plane_dropdown(form)
		options = Plane.all.map { |plane| [ "#{plane.tail_number} (#{plane.model})", plane.id ] }
		options.unshift [ '--', 0 ]

		form.select :plane_id, options #[ [ '', nil ], Plane.all.map { |plane| [ "#{plane.tail_number} (#{plane.model})", plane.id ] } ]
	end

end

module PlanesHelper

	def plane_dropdown(form)
		options = Plane.all.map { |plane| [ "#{plane.tail_number} (#{plane.model})", plane.id ] }
		options.unshift [ '--', nil ]

		form.select :plane_id, options #[ [ '', nil ], Plane.all.map { |plane| [ "#{plane.tail_number} (#{plane.model})", plane.id ] } ]
	end

	# Format Plane object as a string for display
	def plane_for_display(plane)
		"#{plane.tail_number} (#{plane.model})"
	end

end

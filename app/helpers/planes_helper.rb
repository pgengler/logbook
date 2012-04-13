module PlanesHelper

	def plane_dropdown(form)
		form.select :plane, Plane.all.map { |plane| [ "#{plane.tail_number} (#{plane.model})", plane.id ] }
	end

end

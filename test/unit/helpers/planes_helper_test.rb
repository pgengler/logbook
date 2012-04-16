require 'test_helper'

class PlanesHelperTest < ActionView::TestCase

	test "plane_for_display formats Plane object for display" do
		plane = Plane.new :tail_number => 'N12345', :model => 'C172N'

		assert_equal "N12345 (C172N)", plane_for_display(plane)

	end

	test "select box includes empty option at top" do
		form_for(Entry.new) do |form|
			select_box = plane_dropdown form

			# This is a complete hack, but Rails doesn't seem to provide a good
			# way of checking for a subset of the DOM (only assert_dom_equal, which
			# operates on the entire DOM tree)
			assert_match /<select.+?>\s*<option value=(['"])\1>--<\/option>/, select_box
		end
	end

end

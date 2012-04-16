require 'test_helper'

class PlanesHelperTest < ActionView::TestCase

	test "select box includes empty option at top" do
		form_for(Entry.new) do |form|
			select_box = plane_dropdown form

			# This is a complete hack, but Rails doesn't seem to provide a good
			# way of checking for a subset of the DOM (only assert_dom_equal, which
			# operates on the entire DOM tree)
			assert_match /<select.+?>\s*<option value=(['"])0\1>--<\/option>/, select_box
		end
	end

end

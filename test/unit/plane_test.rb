require 'test_helper'

class PlaneTest < ActiveSupport::TestCase

	test "tail number should be required" do
		assert_raises ActiveRecord::RecordInvalid do
			Plane.create! :model => 'C172N'
		end
	end

end

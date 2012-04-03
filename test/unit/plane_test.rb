require 'test_helper'

class PlaneTest < ActiveSupport::TestCase

	test "tail number should be required" do
		assert_raises ActiveRecord::RecordInvalid do
			Plane.create! :model => 'C172N'
		end
	end

	test "model should be required" do
		assert_raises ActiveRecord::RecordInvalid do
			Plane.create! :tail_number => 'N12345'
		end
	end

end

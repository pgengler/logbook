require 'test_helper'

class EntryTest < ActiveSupport::TestCase

	def setup
		@entry_options = {
			:flown        => Date.today,
			:plane        => Plane.new,
			:from         => 'TEST',
			:to           => 'TEST',
			:takeoffs     => 1,
			:landings     => 1,
			:total_flight => 1.2,
		}
	end

	test "entries require a date" do
		assert_raises ActiveRecord::RecordInvalid do
			@entry_options.delete :flown
			Entry.create! @entry_options
		end
	end

	test "entries require a plane" do
		assert_raises ActiveRecord::RecordInvalid do
			@entry_options.delete :plane
			Entry.create! @entry_options
		end
	end

	test "entries require a 'from' airport" do
		assert_raises ActiveRecord::RecordInvalid do
			@entry_options.delete :from
			Entry.create! @entry_options
		end
	end

	test "entries require a 'to' airport" do
		assert_raises ActiveRecord::RecordInvalid do
			@entry_options.delete :to
			Entry.create! @entry_options
		end
	end

	test "entries require a value for 'takeoffs'" do
		assert_raises ActiveRecord::RecordInvalid do
			@entry_options.delete :takeoffs
			Entry.create! @entry_options
		end
	end

	test "entries require a value for 'landings'" do
		assert_raises ActiveRecord::RecordInvalid do
			@entry_options.delete :landings
			Entry.create! @entry_options
		end
	end

	test "entries should require a total flight time" do
		assert_raises ActiveRecord::RecordInvalid do
			@entry_options.delete :total_flight
			Entry.create! @entry_options
		end
	end
end

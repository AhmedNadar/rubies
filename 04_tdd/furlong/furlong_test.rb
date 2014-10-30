require "minitest/autorun"
require "./furlong"

class FurlongTest < Minitest::Unit::TestCase
	def test_one_mile
		km = Furlong.new.miles_to_kilometers(1)
		assert_in_delta 1.60934, km, 0.0001
	end

	def test_convert_marathon_21_514_miles_to_34_623426816_km
		km = Furlong.new.miles_to_kilometers(21.514)
		assert_in_delta 34.623426816, km, 0.0001
	end

	def test_the_driving_distance_from_toronto_to_vancouver_27187_miles_to_43754_km
		km = Furlong.new.miles_to_kilometers(2.7187)
		assert_in_delta 4.3754, km, 0.0001
	end	
	def test_not_convert_3999_miles_to_3999_km
		km = Furlong.new.miles_to_kilometers(3999)
		refute_in_delta 3999, km, 0.0001  
	end
end
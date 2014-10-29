require 'rspec'
require "./furlong"

describe Furlong do
	it "should converts 1 mile to 1.60934 km" do
		calc = Furlong.new
		km = calc.miles_to_kilometers(1)
		expect(km).to be_within(0.0001).of(1.60934)
	end	
	
	it "should converts marathon 21.514 miles to 34.623426816 km" do
	  calc = Furlong.new
	  km = calc.miles_to_kilometers(21.514)
	  expect(km).to be_within(0.0001).of(34.623426816)
	end

	it "converts the driving distance from Toronto to vancouver 2.7187 miles to 4.3754 km" do
	  calc = Furlong.new
	  km = calc.miles_to_kilometers(2.7187)
	  expect(km).to be_within(0.0001).of(4.3754)
	end

	it "should not converts 2000 miles to 2000 km" do
	  calc = Furlong.new
	  km = calc.miles_to_kilometers(2000)
	  expect(km).not_to be_within(0.0001).of(2000)
	end
end
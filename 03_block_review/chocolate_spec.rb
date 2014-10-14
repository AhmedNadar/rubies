require_relative 'chocolate'

describe Chocolate do
	it "should break chocolate to a giving dimension" do
	  expect(Chocolate.new.break_chocolate(5,5)).to eq 24
	end
	
	it "should break chocolate to a giving dimension" do
	  expect(Chocolate.new.break_chocolate(4,7)).to eq 27
	end

	it "should break chocolate to a giving dimension" do
	  expect(Chocolate.new.break_chocolate(1,1)).to eq 0
	end

	it "should break chocolate to a giving dimension" do
	  expect(Chocolate.new.break_chocolate(6,1)).to eq 5
	end

	# What If I Told You There is No Chocolate?
	it "should break chocolate to a giving dimension" do
	  expect(Chocolate.new.break_chocolate(0,0)).to eq 0
	end
end


# Your task is to split the chocolate bar of given dimension n x m into small squares.
# Each square is of size 1x1 and unbreakable.
# Implement a function that will return minimum number of breaks needed.

# For example if you are given a chocolate bar of size 2 x 1 you can split it to single squares in just one break, but for size 3 x 1 you must do two breaks.

# If input data is invalid you should return 0 (as in no breaks are needed if we do not have any chocolate to split). Input will always be a non-negative integer.

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


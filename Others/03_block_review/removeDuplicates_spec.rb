require_relative 'removeDuplicates'

describe RemoveDuplicates do
	it "Duplicates should be removed and in the order first seen." do
		expect(RemoveDuplicates.new.unique([1, 2, 3, 3, 2, 1, 2, 3, 1, 1, 3, 2])).to eq [1, 2, 3]
		expect(RemoveDuplicates.new.unique([1, 3, 2, 3, 2, 1, 2, 3, 1, 1, 3, 2])).to eq [1, 3, 2]
		expect(RemoveDuplicates.new.unique([3, 2, 3, 3, 2, 1, 2, 3, 1, 1, 3, 2])).to eq [3, 2, 1]
	end

	it "should multiple values should return in same order as given." do
	  expect(RemoveDuplicates.new.unique([-1, 5, 10, -100, 3, 2])).to eq [-1, 5, 10, -100, 3, 2]
	end

	it "One value should return that value in array." do
		expect(RemoveDuplicates.new.unique([-1])).to eq [-1]
  end

  it "Empty array should return an empty array." do
  	expect(RemoveDuplicates.new.unique([])).to eq []
  end
end
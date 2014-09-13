require_relative 'zoo'


describe Panda do
  it "should likes bamboo" do
  	expect(Panda.new.likes?(:bamboo)).to eq true
  end

  it "should like Bamboo as string" do
  	expect(Panda.new.likes?("bamboo")).to eq true
  end

  it "should not like Sushi as food" do
  	expect(Panda.new.likes?("sushi")).to eq false
  end
end

describe Lion do
	it "should eat wildebeests" do
		expect(Lion.new.likes?(:wildebeests)).to eq true
	end
end
require_relative 'zoo'


describe Panda do
  it "should likes bamboo" do
  	expect(Panda.new.likes?(:bamboo)).to eq true
  end

  it "should likes Bamboo as string" do
  	expect(Panda.new.likes?("bamboo")).to eq true
  end
end
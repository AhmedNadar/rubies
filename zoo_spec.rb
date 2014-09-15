require_relative 'zoo'

describe Animal do
  it "should not rais an error when it like a food" do
  	expect { Animal.new.likes?(:food) }.to_not raise_error
  end
end

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

	it "should eat zeebras" do
		expect(Lion.new.likes?(:zeebras)).to eq true
	end

	it "should not eat tuna" do
		expect(Lion.new.likes?(:tuna)).to eq false
	end
end

describe Zookeeper do
	zk = Zookeeper.new
	panda = Panda.new
	zk.feed(food: :bamboo, to: :panda)
end
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

  it "should be full after eating 30 bamboo" do
  	panda = Panda.new
  	31.times do
  		panda.eat(:bamboo)
  	end
  	expect(panda).to be_full
  end

  it "should not be full after eating 1 bamboo" do
    panda = Panda.new
    panda.eat(:bamboo)
    expect(panda).not_to be_full
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

	it "should be after eating 11 meals" do
	  lion = Lion.new
	  11.times do
	  	lion.eat(:zeebras)
		end
	  expect(lion).to be_full
	end

	it "should not be full when it eats less than 11 meals" do
	  lion = Lion.new
	  lion.eat(:zeebras)
	  expect(lion).not_to be_full
	end
end

describe Zookeeper do
	it "should be able to feed bamboo to Pandas" do
		zk = Zookeeper.new
		panda = Panda.new
		zk.feed(food: :bamboo, to: panda)
		expect(panda).to receive(:eat).with(:bamboo) # Expecting messages
		panda.eat(:bamboo)
	end	

	it "should be able to feed zeebras to Lions" do
		zk = Zookeeper.new
		lion = Lion.new
		zk.feed(food: :zeebras, to: lion)
		expect(lion).to receive(:eat).with(:zeebras) # Expecting messages
		lion.eat(:zeebras)
	end		

	it "should likes salad" do
		zk = Zookeeper.new
		expect(zk.likes?(:salad)).to eq true  
		expect(zk.likes?(:apple)).to eq true  
	end
	it "should not like bamboo" do
		zk = Zookeeper.new
	  expect(zk.likes?(:bamboo)).to eq false
	end
end
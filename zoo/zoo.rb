require_relative 'human'
require_relative 'animal'

# PANDA
class Panda 
	include Animal

	def acceptable_food
		bamboo = Food.new("bamboo")
		[bamboo.name]
	end

	def full?
		@meals > 30	
	end
end

#LION
class Lion
	include Animal
	def acceptable_food
		wildebeests = Food.new("wildebeests")
		zeebras = Food.new("zeebras")
		[wildebeests.name, zeebras.name]
	end

	def full?
		@meals > 10
	end
end

# FOOD
class Food
	attr_accessor :name
	def initialize(name)
	  @name = name
	end
end

# ZOOKEEPER
class Zookeeper
	include Human
	def feed(args={})
		food = args.fetch(:food)
		panda = args.fetch(:to)
		panda.eat(:food) # this does't test that Panda actully eat the food
	end
end

# FOODBARGE
class FoodBarge
	def food_for(animal)
		case animal
		when Panad
			animal.acceptable_food
		when Lion
			animal.acceptable_food
		else
			false
		end
	end
end

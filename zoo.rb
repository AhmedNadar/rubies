# Animal module
module Animal
	def likes?(food)
		acceptable_food.include?(food)
	end

	def acceptable_food
		[]
	end

	def eat(food)
		@meals ||= 0 # initialize @meal
			if likes?(food)
				@meals += 1
				true
			else
				false
			end
	end

	def full?
		false
	end
end

class Food
	attr_accessor :name
	def initialize(name)
	  @name = name
	end
end

# Panda class
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


# Human module
module Human
	include Animal
	def likes?(food)
		dite.include?(food.to_sym)	
	end

	def dite
		[:salad, :apple]
	end
end

class Zookeeper
	include Human
	def feed(args={})
		food = args.fetch(:food)
		panda = args.fetch(:to)
		panda.eat(:food) # this does't test that Panda actully eat the food
	end
end

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

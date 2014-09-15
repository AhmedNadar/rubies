class Animal

	def initialize
	  @meals = 0
	end
	def likes?(food)
		wield_food.include?(food.to_sym)
	end

	def wield_food
		# assuming all animal likes apple
		[:apple]
	end

	def eat(food)
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

class Panda < Animal
	def wield_food
		super + [:bamboo]
	end

	def full?
		@meals > 30	
	end
end

class Lion < Animal 
	def wield_food
		super + [:wildebeests, :zeebras]
	end
end

class Zookeeper
	def feed(args={})
		food = args.fetch(:food)
		panda = args.fetch(:to)
		panda.eat(:food) # this does't test that Panda actully eat the food
	end
end
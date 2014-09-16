# Animal module
module Animal

	def likes?(food)
		wild_food.include?(food.to_sym)
	end

	def wild_food
		# assuming all animal likes apple
		[:apple]
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

# Panda class
class Panda 
	include Animal
	def wild_food
		super + [:bamboo]
	end

	def full?
		@meals > 30	
	end
end

class Lion
	include Animal
	def wild_food
		super + [:wildebeests, :zeebras]
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


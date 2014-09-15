class Animal
	def likes?(food)
		wield_food.include?(food.to_sym)
	end

	def wield_food
		# assuming all animal likes apple
		[:apple]
	end
end

class Panda < Animal
	def wield_food
		super + [:bamboo]
	end

	def eat(food)
		true
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
		panda.eat(:food)
	end
end
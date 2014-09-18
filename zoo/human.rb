# Human
require_relative 'animal'

module Human
	include Animal
	def likes?(food)
		dite.include?(food.to_sym)	
	end

	def dite
		[:salad, :apple]
	end
end
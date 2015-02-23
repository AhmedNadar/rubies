class Automobile

	attr_accessor :color, :make, :year

	def initialize(color, make, year)
	  @color, @make, @year = color, make, year
	end

	def self.wheels(num)
		"Wheels number is #{num}."
	end

	def update(hash)
		@make = hash.fetch(:make, @make)
		@color = hash[:color] if hash[@color]
		@year = hash[:year] if hash[@year]
	end
end	

puts "This is my new car"
car = Automobile.new("Blue", "KIA", "2014")
puts Automobile.wheels(4)
puts "My new car is #{car.make} and it is a #{car.color}, and its made in #{car.year}"
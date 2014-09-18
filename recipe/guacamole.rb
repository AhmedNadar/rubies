ingredients = {}
ingredients[:avocados] = 4
ingredients[:jalapenos] = 2

recipe = {}
recipe[:ingredients] = ingredients
recipe[:methods] = ["Peel / Slic Avocados", "Chop jalapenos into small dice"]

puts "Ingredients"
recipe[:ingredients].each do |key, value|
	puts "* #{key.capitalize}: #{value}"
end

puts "\nMethods"
recipe[:methods].each_with_index do |step, index|
	puts "#{index+1}. #{step}"
end

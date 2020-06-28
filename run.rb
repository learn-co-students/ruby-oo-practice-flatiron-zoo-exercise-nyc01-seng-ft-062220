require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
bronx = Zoo.new("Bronx Zoo", "NYC")
san_diego = Zoo.new("San Diego Zoo", "San Diego")

tiger = Animal.new("tiger", 500, "Tony", bronx)
bear = Animal.new("bear", 1000, "Baloo", san_diego)
walrus = Animal.new("walrus", 500, "Tusks", bronx)
tiger2 = Animal.new("tiger", 500, "Fangs", bronx)

binding.pry
puts "done"

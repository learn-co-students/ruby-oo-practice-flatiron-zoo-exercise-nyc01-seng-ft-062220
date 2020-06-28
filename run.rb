require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


animal1 = Animal.new("Lion", 220, "Brut")
animal2 = Animal.new("Cat", 11, "Wiskers")
animal3 = Animal.new("Monkey", 25, "Bobby")
animal4 = Animal.new("Girraffe", 160, "Longboi")
animal5 = Animal.new("Lion", 195, "Scar")
animal6 = Animal.new("Lion", 240, "Mufasa")

zoo1 = Zoo.new("BronxZoo", "Bronx")
zoo2 = Zoo.new("LincolnParkZoo", "Chicago")

zoo1.add_animals(animal1)
zoo1.add_animals(animal2)
zoo1.add_animals(animal3)
zoo1.add_animals(animal5)

zoo2.add_animals(animal4)
zoo2.add_animals(animal6)


binding.pry
puts "done"

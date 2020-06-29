require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

a_zoo = Zoo.new("A", "New York")
b_zoo = Zoo.new("B", "Moscow")
c_zoo = Zoo.new("C", "Paris")
d_zoo = Zoo.new("D", "New York")

dog = Animal.new("Dog", 100, "Buddy")
eagle = Animal.new("Eagle", 50, "Orel")
dog_2 = Animal.new("Dog", 200, "Pal")

a_zoo.animals = dog
b_zoo.animals = eagle
c_zoo.animals = dog_2 

binding.pry
puts "done"

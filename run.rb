require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
z1 = Zoo.new("Bronx Zoo", "Bronx, NY")

a1 = Animal.new("Snake", 5, "Bob", z1)
a2 = Animal.new("Snake", 10, "Robert", z1)

Animal.all

a1.zoo

Animal.find_by_species("Snake")

z1.animals

z1.animal_species

z1.find_by_species("Snake")

Animal.find_by_species("Snake")

z1.animal_nicknames

Zoo.find_location("Bronx, NY")

binding.pry
puts "done"

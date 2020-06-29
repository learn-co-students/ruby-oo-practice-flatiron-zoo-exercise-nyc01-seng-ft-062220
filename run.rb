require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here

zoo1 = Zoo.new('Brox', 'New York')
zoo2 = Zoo.new('Central Park', 'New York')
zoo3 = Zoo.new('Golden Gate', 'New York')
zoo4 = Zoo.new('Lake Shore', 'New York')

animal1 = Animal.new('kitty', 100, 'Garfield', zoo1)
animal11 = Animal.new('kitty', 100, 'Garfield1', zoo1)
animal12 = Animal.new('kitty', 100, 'Garfield2', zoo1)
animal13 = Animal.new('kitty', 100, 'Garfield3', zoo1)
animal2 = Animal.new('Puppy', 20, 'Scooby Doo', zoo1)
animal3 = Animal.new('kitty', 10, 'Fluffy Butt', zoo2)
animal4 = Animal.new('Chicken', 5, 'Nugget', zoo2)
animal5 = Animal.new('Monkey', 100, 'George', zoo3)
animal5 = Animal.new('Monkey', 100, 'Horambe',zoo4)
animal5 = Animal.new('kitty', 100, 'Dina', zoo4)


puts zoo1.find_by_location('New York')

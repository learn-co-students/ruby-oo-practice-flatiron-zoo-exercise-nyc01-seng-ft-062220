require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

zoo1 = Zoo.new("Bronx Zoo", "Bronx")
zoo2 = Zoo.new("Corona Zoo", "Corona")
zoo3 = Zoo.new("Manhattan Zoo", "Manhattan")
zoo4 = Zoo.new("Central Park Zoo", "Manhattan")



tiger1 = Animal.new("tiger", "Bronx Zoo", "Big Cat", 4000)
tiger2 = Animal.new("tiger", "Bronx Zoo", "Eye", 920)
tiger3 = Animal.new("tiger", "Corona Zoo", "Bad Ass", 832)
tiger4 = Animal.new("tiger", "Corona Zoo", "Wow", 432)
tiger5 = Animal.new("tiger", "Manhattan Zoo", "Hobo", 845)
tiger6 = Animal.new("tiger", "Manhattan Zoo", "Handsome", 946)
tiger7 = Animal.new("tiger", "Central Park Zoo", "Baby", 800)
tiger8 = Animal.new("tiger", "Central Park Zoo", "Ori", 1000)

snake1 = Animal.new("snake", "Bronx Zoo", "Eye", 15)
snake2 = Animal.new("snake", "Bronx Zoo", "Poo", 9)
snake3 = Animal.new("snake", "Corona Zoo", "Wosaw", 93)
snake4 = Animal.new("snake", "Corona Zoo", "Lowsa", 22)
snake5 = Animal.new("snake", "Manhattan Zoo", "Lmsnea", 23)
snake6 = Animal.new("snake", "Manhattan Zoo", "Mswas", 1)
snake7 = Animal.new("snake", "Central Park Zoo", "Briew", 5)
snake8 = Animal.new("snake", "Central Park Zoo", "Iwqs", 12)

binding.pry
puts "done"

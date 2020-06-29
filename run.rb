require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
zoo1 = Zoo.new("The Bronx Zoo", "New York")
zoo2 = Zoo.new("The Denver Zoo", "Denver")

animal1 = Animal.new("Monkey", "10lbs", "money in the middle", zoo1)
animal2 = Animal.new("Snake", "15lbs", "Snake in the middle", zoo2)
binding.pry
puts "done"

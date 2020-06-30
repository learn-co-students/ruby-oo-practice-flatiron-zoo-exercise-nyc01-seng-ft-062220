require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


brodi=Animal.new("dog", 50, "brodi")
chak=Animal.new("dog", 40, "chak")
moly=Animal.new("cat", 10, "moly")
tim=Animal.new("wolf", 40, "tim")
zoo1=Zoo.new("Bronx", "BronxNY")
brodi.zoo=zoo1
chak.zoo=zoo1
moly.zoo=zoo1

zoo2=Zoo.new("new", "BronxNY")



binding.pry
puts "done"

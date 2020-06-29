class Animal

  attr_reader :species, :nickname
  attr_accessor :weight, :zoo

  @@all = []

  def initialize(species, weight=0, nickname, zoo)
    @zoo = zoo
    @species = species
    @weight = weight
    @nickname = nickname
    @@all << self
  end

  def find_by_species(species)
    @@all.select do |element|
      element.species == species
    end
  end

  def self.all
    @@all
  end

end

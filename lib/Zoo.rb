class Zoo

  attr_reader :name, :location

  @@all = []

  def initialize(name, location)
    @name = name
    @location = location
    @@all << self
  end

  def self.all
    @@all
  end

  def animals
    Animal.all.select do |element|
      element.zoo == self
    end
  end

  def animal_species
    test = animals.map do |element|
      element.species
    end
    test.uniq
  end

  def find_by_species(species)
    test = animals.select do |element|
      element.species == species
    end
    test
  end

  def animal_nicknames
    array = animals.map do |element|
      element.nickname
    end
    array
  end

  def find_by_location(location)
    @@all.select do |element|
      element.location == location
    end
  end


end

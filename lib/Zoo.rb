class Zoo

    attr_accessor :name, :location

    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        @animals = []
        @@all << self
    end

    def self.all
        @@all
    end 

    def add_animals(animal)
        @animals << animal
    end

    def animals
        #all animals that the zoo has
        @animals
    end


    def animal_species
        #array of all species as strings, if you have two dogs, should only return unique
        @animals.map {|animal| animal.species}.uniq
    end

    def find_by_species(species)
        #should take in an animal's species as an argument and return an array of all the animals in that zoo, which are of that species.
        @animals.select {|animal| animal.species == species}
    end

    def animal_nicknames
        #should return an array of all the nicknames of animals that a specific instance of a zoo has.
        @animals.map {|animal| animal.nickname }
    end

    def Zoo.find_by_location(location)
       # should take in a location as an argument and return an array of all the zoos within that location.
        Zoo.all.select {|zoo| zoo.location == location}
    end

end

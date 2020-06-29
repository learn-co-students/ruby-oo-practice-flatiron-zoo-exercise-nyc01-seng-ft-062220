class Zoo
    attr_accessor :name, :location

    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self 
        #@animals = [] 
    end 

    def self.all 
        @@all
    end 

    def animals=(animals)
        #@animals << animals
        animals.zoo = self 
    end 

    def animals
        Animal.zoo.find_all do |animal|
            animal.zoo == self 
        end 
    end 

    def animal_species 
        a = self.animals.map do |animal|
            animal.species
        end 
        a.uniq 
    end 

    def find_by_species(species)
        #self.animals.find_all do |animal|
        #    animal.species == species 
        #end
        Animal.find_by_species(species) 
    end 

    def animal_nicknames 
        self.animals.map do |animal|
            animal.nickname 
        end 
    end 

    def self.find_by_location(location)
        self.all.find_all do |zoo|
            zoo.location == location
        end 
    end 
        
end

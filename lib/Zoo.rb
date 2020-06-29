class Zoo
    attr_accessor :name, :location
    @@all = []

    def initialize (name,location)
        @name = name
        @location = location
        @@all << self
    end

    def animals
        Animal.all.select{|i| i.zoo == self}
    end

    def animal_species
        self.animals.map {|i| i.species}.uniq
    end

    def find_by_species(animal_species)
        self.animals.select {|i| i.species == animal_species}
    end

    def self.find_by_location(location)
        self.all.select{|i| i.location == location}
    end


    def self.all
        @@all
    end

    def adopt_animal(animal)
        animal.zoo = self
    end

end


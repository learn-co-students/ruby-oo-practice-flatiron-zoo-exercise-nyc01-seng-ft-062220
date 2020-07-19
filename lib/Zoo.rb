class Zoo

    attr_accessor :name, :location

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
        Animal.all.select { |animal| animal.zoo == self }
    end

    def animal_species
        animals.collect { |animal| animal.species }        
    end

    def find_by_species(species)
        animals.select { |animal| animal.species == species }
    end

    def animal_nicknames
        animals.collect do |a| 
            a.nickname 
            # binding.pry
        end
    end

    def self.find_location(location)
        self.all.select { |zoo| zoo.location == location}
    end

end

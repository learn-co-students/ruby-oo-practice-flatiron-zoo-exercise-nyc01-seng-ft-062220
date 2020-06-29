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
        Animal.all.select do |animal_object|
            animal_object.zoo == self
        end
    end

    def animal_species
        self.animals.collect do |animal_object|
            animal_object.species
        end.uniq
    end

    def animal_nicknames
        self.animals.collect do |animal_object|
            animal_object.nickname
        end
    end

    def self.find_by_location(location_string)
        Zoo.all.select do |zoo_object|
            zoo_object.location == location_string
        end
    end
end

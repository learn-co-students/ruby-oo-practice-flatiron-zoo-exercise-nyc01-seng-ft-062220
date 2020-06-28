class Zoo

    attr_accessor = :name, :location
    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        Zoo.all << self
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
        self.animals.uniq
    end

    def find_by_species(species)
        self.animals.select do |element|
            element.species == species
        end
    end

    def animal_nicknames
        self.animals.map do
            element.nickname
        end
    end

    def self.find_by_location(location)
        Zoo.all.select do |element|
            element.location = location
        end
    end

end

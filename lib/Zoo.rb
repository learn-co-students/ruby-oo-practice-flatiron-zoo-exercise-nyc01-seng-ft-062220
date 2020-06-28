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
        Animal.all.select {|id| id.zoo == self.name}
    end

    def animal_species
        self.animals.map {|id| id.species}.uniq
    end

    def find_by_species(kind)
        self.animals.select {|id| id.species == kind}
    end

    def animal_nickname
        self.animals.map {|id| id.nickname}
    end

    def self.find_by_location(area)
        self.all.select {|zoo| zoo.location == area}
    end

end

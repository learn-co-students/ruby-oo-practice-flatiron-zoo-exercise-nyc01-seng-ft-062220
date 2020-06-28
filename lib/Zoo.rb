require "pry"

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

    def animal_species
        all = []
        Animal.all.select do |a|
            if a.zoo == self
                all << a.species
            end
        end
        all.uniq
    end

    def find_by_species(species)
        specs = []
        Animal.all.map do |a|
           if a.species == species
            specs << a
           end
        end
        specs
    end

    def nicknames
        nicks = []
        Animal.all.select do |a|
            if a.zoo == self
                nicks << a.nickname
            end
        end
        nicks
    end

    def self.location (location)
        self.all.select do |zoo|
            zoo.location == location
        end
    end


end

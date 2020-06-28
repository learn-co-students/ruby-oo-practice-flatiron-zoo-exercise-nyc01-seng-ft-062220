class Animal

    attr_accessor :weight, :zoo
    attr_reader :species, :nickname
    @@all = []

    def initialize(species, weight, nickname)
        @species = species
        @weight = weight
        Animal.all << self
    end

    def self.all
        @@all
    end

    def self.find_by_species(species)
        Animal.all.select do |element|
            element.species === species
        end
    end

end

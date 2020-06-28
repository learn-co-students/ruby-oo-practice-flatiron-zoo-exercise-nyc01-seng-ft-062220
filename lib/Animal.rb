class Animal
    attr_reader :nickname, :species
    attr_accessor :weight, :zoo

    @@all = []
    def initialize(species, zoo, nickname, weight)
        @species = species
        @zoo = zoo
        @nickname = nickname
        @weight = weight
        @@all << self
    end

    def self.all
        @@all
    end

    def the_nickname
        self.nickname
    end

    def the_weight
        self.weight
    end

    def the_species
        self.species
    end

    def the_zoo
        self.zoo
    end

    def self.find_by_species(kind)
        Animal.all.select {|id| id.species == kind}
    end



end

class Animal
    attr_reader :nickname, :species
    attr_accessor :weight, :zoo
    @@all = []

    def initialize (nickname,species,weight)
        @nickname = nickname
        @species = species
        @weight = weight
        @@all << self
    end

    def self.all
        @@all
    endA



    def self.find_by_species(animal_species)
        self.all.select{|i| i.species ==animal_species}
    end

end

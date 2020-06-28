class Animal

    attr_accessor :species, :weight, :nickname, :animals

    @@all = []

    def initialize(species, weight, nickname)
        @species = species
        @weight = weight
        @nickname = nickname
        @@all << self
    end

    def self.all
        @@all
    end


    def zoo
        # should return the zoo instance that the instance belongs to.  
        Zoo.all.each_with_index do |zoo_instance, i| 
            Zoo.all[i].animals.each do |animal_instance| 
                if animal_instance == self
                    return Zoo.all[i]
                end
            end
        end
    end

    def find_by_species(species)
       # should take in an animal's species as an argument and return an array of all the animals, which are of that species.
       Animal.all.select {|animal| animal.species == species}
    end

end

class Animal
    attr_accessor :weight, :zoo, :nickname, :species
    @@all = []
    def initialize(species, weight, nickname, zoo)
        @species = species
        @weight = weight
        @nickname = nickname
        zoo.animals << self
        @@all << self
    end

    def self.all
        @@all
    end

    def find_by_species(species)
        self.all.select do |animal|
            animal.species == species
        end
    end

end



### Animal Class
#- An `animal` should be instantiated with the species (e.g. "Cat", "Dog", "Rat"), a numerical weight and a nickname. Keep in mind that the animal's species and nickname should not be able to change, but its weight can.
#- `Animal#nickname` should return the nickname of the animal.
#- `Animal#weight` should return the weight of the animal.
#- `Animal#species` should return the species of the animal.
#- `Animal.all` should return an array of all the animal instances.
#- `Animal#zoo` should return the zoo instance that the instance belongs to.
#- `Animal.find_by_species` should take in an animal's species as an argument and return an array of all the animals, which are of that species.


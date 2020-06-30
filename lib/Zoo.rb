class Zoo
@@all=[]
attr_accessor :name, :location
    def initialize(name, location)
        @name=name 
        @location=location
        @@all << self
    end
def animals
    Animal.all.select {|animal| animal.zoo==self}
end

def self.all 
    @@all 
end

def animal_species
    all_species=[]
animals.map do |animal|
     all_species << animal.species
end
all_species.uniq
end

def find_by_species(species)
animals.map do |animal|
    if animal.species==species
animal
end
end
end

def animal_nicknames
animals.map {|animal| animal.nickname}
end

def self.find_by_location(location)
    all.select {|loc| loc.location == location}
end
end

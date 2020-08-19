class Brewery
    @@all = []

    def initialize(attributes)
        @@all << self
    end 

    def self.all
        @@all 
    end 
end 
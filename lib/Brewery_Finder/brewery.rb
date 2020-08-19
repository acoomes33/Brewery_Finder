class Brewery

    attr_accessor :name, :brewery_type, :street, :phone, :url

    @@all = []

    def initialize(name, brewery_type, street, phone, url)
        self.name = name
        self.brewery_type = brewery_type
        self.street = street
        self.phone = phone
        self.url = url
        @@all << self
    end 

    def self.all
        @@all 
    end 

    def self.more_info(input)
        puts ""
    end 
end
class Brewery

    attr_accessor :name, :brewery_type, :street, :phone, :url, :city, :state

    @@all = []

    def initialize(name, brewery_type, street, phone, url, city, state)
        self.name = name
        self.brewery_type = brewery_type
        self.street = street
        self.phone = phone
        self.url = url
        self.city = city
        self.state = state
        @@all << self
    end 

    def self.all
        @@all 
    end 

    def self.more_info(input)
        puts "more info based on #{input}"
        brewery = self.all[input - 1]
            puts "#{brewery.name.upcase}".colorize(:blue)
            puts "  brewery type:".colorize(:light_blue) + " #{brewery.brewery_type}"
            puts "  location:".colorize(:light_blue) + " #{brewery.street}, #{brewery.city}, #{brewery.state}"
            puts "  phone:".colorize(:light_blue) + " #{brewery.phone}"
            puts "  website:".colorize(:light_blue) + " #{brewery.url}"
            puts "----------------------".colorize(:green)
        
        #binding.pry
    end 
end
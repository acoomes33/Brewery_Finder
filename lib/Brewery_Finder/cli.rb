class CLI

    def start
        puts "Welcome to the Brewery Finder App!"
        puts "Please enter a zipcode"
        input = gets.strip
        API.get_breweries(input)
    end 

end 
class CLI

    def start
        puts "Welcome to the Brewery Finder App!"
        puts "Please enter a zipcode"
        input = gets.strip
        API.get_breweries(input)
        # Brewery.all.each.with_index(1) do |b, i|
        #     puts "#{i} - #{b.name}"
        # end 
        # puts "Please choose a number from the list to learn more:"
    end 

end 
class CLI

    def start
        welcome
        list_breweries
        goodbye
    end 

    def welcome
        puts "Welcome to the Brewery Finder App!"
        puts "Please enter a zipcode"
    end 

    def list_breweries
        input = gets.strip
        API.get_breweries(input)
         Brewery.all.each.with_index(1) do |b, i|
             puts "#{i} - #{b.name}"
         end 
    end 

    def menu 
        puts "Please choose a number from the list to learn more:"
        input = gets.strip.to_i
            if Brewery.all.size >= (input - 1)
                Brewery.all(input - 1)
        else 
            puts "Make sure to type in a valid number"
            menu
        end 

    end 

    # def goodbye 
    #     puts "See ya later!"
    # end 

end 
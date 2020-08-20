class CLI

    def start
        welcome
        list_breweries
        menu
        #goodbye
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
         puts "Please choose a number from the list to learn more:"
         
    end 

    def menu 
        input = gets.to_i
        #binding.pry
        if Brewery.all.size >= (input) && input != 0
            Brewery.more_info(input)
        else 
            puts "Make sure to type in a valid number"
            menu
        end 
    end 

end 
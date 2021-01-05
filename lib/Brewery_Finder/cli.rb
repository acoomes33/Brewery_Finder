class CLI

    def start
        welcome
        list_breweries
        goodbye
    end 

    def welcome
        puts "Welcome to the Brewery Finder App!"
    end 

    def list_breweries
            puts "Please enter a zipcode:"
                input = gets.strip
                API.get_breweries(input)
                if Brewery.all.size != 0
                Brewery.all.each.with_index(1) do |b, i|
                    puts "#{i} - #{b.name}"
                    end 
                    menu
                else 
                    puts "Sorry, we could not find any breweries in this area."
                    list_breweries
                end 
    end 

    def menu 
        answer = nil 
        while answer != "exit"
            puts "Please choose a number from the list to learn more or type exit:"
            answer = gets.strip.downcase
                if Brewery.all.size >= (answer.to_i) && answer.to_i > 0
                    self.more_info(answer.to_i)
                elsif answer == "exit"
                    break
                else 
                    puts "Make sure to type in a valid number"
                end ;
        end 
    end 

    def more_info(input)
        brewery = Brewery.all[input - 1]
            puts "#{brewery.name.upcase}".colorize(:blue)
            puts "  brewery type:".colorize(:light_blue) + " #{brewery.brewery_type}"
            puts "  location:".colorize(:light_blue) + " #{brewery.street}, #{brewery.city}, #{brewery.state}"
            puts "  phone:".colorize(:light_blue) + " #{brewery.phone}"
            puts "  website:".colorize(:light_blue) + " #{brewery.url}"
            puts "----------------------".colorize(:green)
    end 

    def goodbye 
        puts "See ya later!"
    end 

end 
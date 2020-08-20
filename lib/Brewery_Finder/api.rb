
class API
    def self.get_breweries(zipcode)
        url = "https://api.openbrewerydb.org/breweries?by_postal=#{zipcode}"
        #send get request to brewery api
        response = HTTParty.get(url)
        response.each do |brewery|
            name = brewery["name"]
            brewery_type = brewery["brewery_type"]
            street = brewery["street"]
            phone = brewery["phone"]
            url = brewery["website_url"]
            city = brewery["city"]
            state = brewery["state"]
        
            Brewery.new(name, brewery_type, street, phone, url, city, state)
        end 
    end 
end 
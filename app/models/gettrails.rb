

class GetTrails
    API_KEY = ENV["API_KEY"]
  
    URL = "https://www.hikingproject.com/data/"
  
    # Method receives user's input and calls the API with it.
    # def self.search(term:, location:)
    #   params = {
    #     term: term,
    #     location: location,
    #     limit: 10,
    #     sort_by: "rating",
    #     radius: 16_000,#
    #   }
      response = HTTP.get(https://www.hikingproject.com/data/).to_s
   
     puts response
    end
  end
  
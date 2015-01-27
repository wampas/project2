class GooglePlacesApi
	include HTTParty

  @@url = 'https://maps.googleapis.com/maps/api/place/textsearch/json?query='
  @@api_key = '&key=' + API_KEY
    
  def self.query(location)
  	@places_query = HTTParty.get(@@url + location + @@api_key)
  end

end
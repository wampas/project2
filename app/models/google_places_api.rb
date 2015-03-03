class GooglePlacesApi
	include HTTParty

  # Class variables
  @@url     = "https://maps.googleapis.com/maps/api/place/textsearch/json?query="
  @@api_key = '&key=' + API_KEY

  # Google Places endpoints
  @@place = {
     search: "https://maps.googleapis.com/maps/api/place/textsearch/json?query=",
    details: "https://maps.googleapis.com/maps/api/place/details/json?placeid=",
     photos: "https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference="
  }
  
  # Class Methods  
  def self.query(location)
  	HTTParty.get(@@place[:search] + location + @@api_key)
  end

  def self.details(id)
  	HTTParty.get(@@place[:details] + id + @@api_key)
  end

  def self.photos(reference)
  	HTTParty.get(@@place[:photos] + reference + @@api_key)
  end

end

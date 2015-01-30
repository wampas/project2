class GooglePlacesApi
	include HTTParty

  @@url     = "https://maps.googleapis.com/maps/api/place/textsearch/json?query="
  @@api_key = '&key=' + API_KEY
    
  def self.query(location)
  	# @places_query = HTTParty.get(@@url + location + @@api_key)
  	HTTParty.get(@@url + location + @@api_key)
  end

  def self.details(id)
  	#@type = {textsearch: 'textsearch', details: 'details', add: 'add', photo: 'photo'}
  	HTTParty.get("https://maps.googleapis.com/maps/api/place/details/json?placeid=" + id + @@api_key)
  end

  def self.photos(reference)
  	HTTParty.get("https://maps.googleapis.com/maps/api/place/photo?maxwidth=400&photoreference=" + reference + @@api_key)
  end

end

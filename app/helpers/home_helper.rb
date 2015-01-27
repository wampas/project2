module HomeHelper
  def search(location)
    GooglePlacesApi.query(location)
  end
  
  def destination(location)
    search(location)["formatted_address"]
  end

  def coordinates(location)
    search(location)["geometry"]["location"]
  end

  def place_id(location)
    search(location)["place_id"]
  end

end

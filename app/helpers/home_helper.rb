module HomeHelper
  def search(location)
    GooglePlacesApi.query(location)
  end
  

  def location_name(location)
    search(location)["formatted_address"]
  end

  def exact_address(location)
    search(location)["exact_address"]
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

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

end

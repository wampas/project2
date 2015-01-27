module HomeHelper
  def location_name(location)
    query(location)["formatted_address"]
  end

  def exact_address(location)
    query(location)["exact_address"]
  end

  def query(location)
    GooglePlacesApi.query(location)
  end
end

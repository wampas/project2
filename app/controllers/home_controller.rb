require 'open-uri'
require 'uri'

class HomeController < ApplicationController
  include HTTParty
  helper :home

  def index
    # Check search box for input
    if params[:search] != nil
      # Encode the search query and send it to Google
      @user_query = URI.encode(params[:search])
      @results    = GooglePlacesApi.query(@user_query)
  	end

    # Sidebar list of locations with articles published
    @locations = Article.pluck(:location).uniq
    
  end

  def show
    # Check URL for parameters and send them to Google
    # if params[:search] != nil
    #   @results = GooglePlacesApi.query(params[:search])
    # end
    
    # Query search result for details
    @details = GooglePlacesApi.details(params[:id])
    @loc = params[:id]
    # byebug
  end
end

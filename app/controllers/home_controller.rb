require 'open-uri'
require 'uri'

class HomeController < ApplicationController
  include HTTParty
  helper :home

  @google = 'https://maps.googleapis.com/maps/api/place/textsearch/json?query='

  def index
    if params[:search] != nil
      @user_query = URI.encode(params[:search])
      @results = GooglePlacesApi.query(@user_query)
    end
    # byebug
  end

  def show
    if params[:search] != nil
      @results = GooglePlacesApi.query(params[:search])
    end
  end
end
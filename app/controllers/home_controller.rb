require 'open-uri'
require 'uri'

class HomeController < ApplicationController
	include HTTParty
  helper :home
	#format :html

  @google = 'https://maps.googleapis.com/maps/api/place/textsearch/json?query='
  
  def index
    # @results = Home.location_name(params[:search])
    if params[:search] != nil
      @user_query = URI.encode(params[:search])
      @results = GooglePlacesApi.query(@user_query)
  		# @results = HTTParty.get(@google + params[:search] + @api_key)
  	end
    # byebug
  end

  def show
    # @results = Home.place_id(params[:search])
    if params[:search] != nil
      @results = GooglePlacesApi.query(params[:search])
      # @results = HTTParty.get(@google + params[:search] + @api_key)
    end
  end
end

require 'open-uri'

class HomeController < ApplicationController
	include HTTParty
	#format :html

	def initialize
    @google = 'https://maps.googleapis.com/maps/api/place/textsearch/json?query='
    @api_key = '&key=' + API_KEY
  end

  def index
  	if params[:search] != nil
  		@results = HTTParty.get(@google + params[:search] + @api_key)
  	end
    # byebug
  end

  def show
    
  end
end

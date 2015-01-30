require 'open-uri'
require 'uri'

class HomeController < ApplicationController
  include HTTParty
  helper :home

  def index
    if params[:search] != nil
      @user_query = URI.encode(params[:search])
      @results    = GooglePlacesApi.query(@user_query)
  	end

    @locations = Article.pluck(:location).uniq
    # byebug
  end

  def show
    if params[:search] != nil
      @results = GooglePlacesApi.query(params[:search])
    end
      @details = GooglePlacesApi.details(params[:id])
      # @photos  = GooglePlacesApi.photos(:id)
  end
end

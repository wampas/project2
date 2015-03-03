require 'uri'

class ArticlesController < ApplicationController
	before_action :find_article, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!
	
	def index		
		if params[:location].present?
			# Strip url encoding from string and filter DB query with it
			@decoded 	= URI.decode(params[:location])
			@articles = Article.where(location: @decoded)
		else
			@articles = Article.all
		end
	end

	def new
		@article = Article.new

		@google_id = params[:id]
		@details = GooglePlacesApi.details(params[:id])
    # byebug
	end

	def create
		@article = Article.new(article_params) 
		@article.user = current_user
		
		if @article.save 
			redirect_to @article 
		else
			flash[:error] = @article.errors.full_messages.to_sentence
			render :new # Render the form again
		end

	end

	def show
		@article = Article.find(params[:id])
	end

	def edit
		authorize @article
	end

	def update
		authorize @article
		
		if @article.update(article_params)
			redirect_to @article
		else
			render :edit
		end
	end

	def destroy
		@article.destroy
	end
end


private

def article_params
	params.require(:article).permit(:title, :body, :location, :image, :google_id) 
end

def find_article
	@article = Article.find(params[:id])
end








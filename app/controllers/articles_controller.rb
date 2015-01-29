require 'uri'

class ArticlesController < ApplicationController
	before_action :find_article, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!
	
	def index		
		if params[:location].present?
			# Strip string of url encoding such as + signs where spaces should be
			@decoded 	= URI.decode(params[:location])
			@articles = Article.where(location: @decoded)
		else
			@articles = Article.all
		end
	end

	def new
		@article = Article.new
	end

	def create
		# render plain: params[:article].inspect
		@article = Article.new(article_params)
		@article.user = current_user
		
		if @article.save 
			redirect_to @article 
		else
			render :new 
		end
	end

	def show
		@article = Article.find(params[:id])
	end

	def edit
		authorize @article
	end

	def update
		# @article = Article.find(find_article)
		authorize @article
		if @article.update(article_params)
			redirect_to @article
		# respond_with(@article)
		# # if @article.update_attributes(article_params)
		# 	redirect_to @article
		else
			render :edit
		end
	end

private

def article_params
	params.require(:article).permit(:title, :body, :location, :image) 
end

def find_article
	@article = Article.find(params[:id])
end

end


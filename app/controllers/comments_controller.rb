require 'uri'

class CommentsController < ApplicationController
	# may need to change this to find_comment
	before_action :find_comment, only: [:create, :edit, :update, :destroy]
	before_action :authenticate_user!
	
	#??? need help with syntax for index
	def index		
		if params[:location].present?
			# Strip string of url encoding such as + signs where spaces should be
			@decoded 	= URI.decode(params[:location])
			@comments = Comment.where(location: @decoded)
		else
			@comments = Comment.all
		end
	end

	def new
		@comment = Comment.new
	end

	def create
		# render plain: params[:article].inspect
		@comment = Comment.new(comment_params)
		@comment.user = current_user
		
		if @comment.save 
			redirect_to @comment #or redirect to @article? 
		else
			render :new 
		end
	end

	# def show
	# 	@comment = Comment.find(params[:id])
	# end

	def edit
		authorize @comment
	end

	def update
		# @article = Article.find(find_article)
		authorize @comment
		if @comment.update(comment_params)
			redirect_to @comment
		# respond_with(@article)
		# # if @article.update_attributes(article_params)
		# 	redirect_to @article
		else
			render :edit
		end
	end

private

def comment_params
	params.require(:comment).permit(:body) 
end

def find_comment
	@comment = Comment.find(params[:id])
end

end


require 'uri'

class CommentsController < ApplicationController
	before_action :authenticate_user!

	def create
		@article = Article.find(params[:article_id])		
		@comment = @article.comments.create(comment_params)

		# @comment.user = current_user
		if @comment.save 
			flash[:success] = "Comment saved."
			redirect_to article_path(@article) 
		end
	end

	def edit
		render 'edit'
	end

	def update		
		authorize @comment
		if @comment.update(comment_params)
			redirect_to @comment
		else
			render :edit
		end
	end

	def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to @article
  end

private

def comment_params
	params.require(:comment).permit(:body) 
end

end


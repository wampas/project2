class UsersController < ApplicationController
	# def new 
	# 	@user = User.new
	# end

	# def create
 #  		@user = User.create( user_params )
	# end

	def show
		@user = User.find(params[:id])
		# @article = @user.articles
	end

	# def index
	# 	@users = User.all
	# end

# 	def edit
# 		@user = User.find(params[:id])
# 	end

# 	def update
# 		@user = User.find(params[:id])
# 	end

	private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

	def user_params
  	params.require(:user).permit(:avatar)
	end

end


class UsersController < ApplicationController

	def show
		@user = User.find(params[:id])
	end

	def index
		@users = User.all
	end

	def edit
		@recipe = User.find(params[:id])
	end

end


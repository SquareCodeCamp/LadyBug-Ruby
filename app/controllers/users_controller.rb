class UsersController < ApplicationController

	respond_to :json, :html

	def index
		respond_with User.all
	end

	def new
		@user = User.new
		respond_with @user
	end

	def create
		@user = User.create(user_params)
		respond_with @user, location: login_url
	end

	def show
		@user = User.find(params[:id])
		respond_with @user
	end

	private

	def user_params
		params.require(:user).permit(:name, :email, :bio, :password)
	end

end

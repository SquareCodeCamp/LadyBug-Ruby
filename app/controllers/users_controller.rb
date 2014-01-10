class UsersController < ApplicationController

	def index
		render json: User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(user_params)
		if @user.valid?
			redirect_to login_url
		else
			render "new"
		end
	end

	def show
		render json: User.find(params[:id])
	end

	private

	def user_params
		params.require(:user).permit(:name, :email, :bio, :password)
	end

end

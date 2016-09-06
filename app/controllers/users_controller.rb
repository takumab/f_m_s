class UsersController < ApplicationController
	
	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id # Logs user in after sign up
			redirect_to root_path, notice: "Thank you for signing up!"
		else
			render 'new'
		end
	end



	private

	def user_params
		params.require(:user).permit(:email, :password_digest, :password, :password_confirmation)
	end
end

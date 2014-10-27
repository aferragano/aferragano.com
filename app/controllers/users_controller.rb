class UsersController < ApplicationController

	def new 
		@user = User.new
	end

	def create
		@user = User.new(user_params)

		if @user.save
			session[:id] = @user.id
			redirect_to root_path
		else
			flash[:error] = "login failed"
			redirect_to "/"
		end
	end

	def destroy
		user.destroy
	end

	private

	def user_params
		params.require(:user).permit([:username, :email, :password, :password_cinfirmation])
	end

end
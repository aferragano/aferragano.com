class DevsController < ApplicationController

	def new 
		@dev = Dev.new
	end

	def index
		@devs = Dev.all
	end	

	def show 
		@dev = Dev.find(params[:id])
	end

	def edit 
		@dev = Dev.find(params[:id])
	end
	
	def create
		@dev = Dev.new(dev_params)
		@dev.user = User.find_by_id(session[:id])

		if @dev.save
			redirect_to devs_path
		else
			render_nothing :true
		end
	end

	def destroy
		dev.destroy
	end

	private

	def dev_params
		params.require(:dev).permit([:title, :description, :image_path, :github_url])
	end

end
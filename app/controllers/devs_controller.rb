class DevsController < ApplicationController

	def new 
		@dev = Dev.new
	end

	def create
		@dev = Dev.new(dev_params)
	end

	def destroy
		dev.destroy
	end

	private

	def dev_params
		params.require(:dev).permit([:title, :description, :image_path, :github_url])
	end

end
class DesignsController < ApplicationController


	def new
	end

	def index
	end

	def create
	end

	def show
	end

	def destroy
	end


	private

	def design_params
		params.require(:design).permit([:title, :description, :image_path])
	end

end

class DesignsController < ApplicationController


	def new
		@design = Design.new
	end

	def index
		@designs = Design.all
	end

	def create
		@design = Design.new(design_params)
		@design.user = User.find_by_id(session[:id])

		if @design.save 
			redirect_to designs_path
		else 
			render_nothing :true
		end

	end

	def edit
		@design = Design.find(params[:id])
	end

	def show
		@design = Design.find(params[:id])
	end

	def destroy
		design.destroy
	end


	private

	def design_params
		params.require(:design).permit([:title, :description, :image_path])
	end

end

class PlanesController < ApplicationController

	def index
		@planes = Plane.all
	end

	def show
		@plane = Plane.find(params[:id])
	end

	def new
		@plane = Plane.new
	end

	def edit
		@plane = Plane.find(params[:id])
	end

	def create
		@plane = Plane.new(plane_params)
		if @plane.save
			redirect_to @plane, notice: 'Plane was successfully created.'
		else
			render action: "new"
		end
	end

	def update
		@plane = Plane.find(params[:id])

		if @plane.update_attributes(plane_params)
			redirect_to @plane, notice: 'Plane was successfully updated.'
		else
			render action: "edit"
		end
	end

	def destroy
		@plane = Plane.find(params[:id])
		@plane.destroy
		redirect_to planes_url
	end

	private

	def plane_params
		params.require(:plane).permit(:tail_number, :model)
	end
end

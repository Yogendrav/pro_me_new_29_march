class PicturesController < ApplicationController
	def index
		@pictures = Picture.all
	end

	def new
		@picture = Picture.new
		respond_to do |format|
			format.js
		end
	end

	def create
		@project = Project.find(params[:project_id])
		@picture = @project.pictures.build(params[:picture])
		if @picture.save
			redirect_to projects_path
		else
			render 'new'
		end
	end
end

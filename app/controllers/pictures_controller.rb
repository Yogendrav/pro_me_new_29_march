class PicturesController < ApplicationController
	def index
		@pictures = Picture.all
	end

	def new
		@picture = Picture.new
		# respond_to do |format|
		# 	format.js
		# end
	end

	def create
		# debugger
		# @project = Project.find_by_id("1")
		@picture = @project.pictures.build(params[:picture])
		if @picture.save
			redirect_to projects_path
		else
			render 'new'
		end
	end
end

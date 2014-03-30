class CommentsController < ApplicationController

	def index
		@comments = Comment.all
	end

	def new
		debugger
		@comment = Comment.new
		respond_to do |format|
			format.js
		end
	end

	def create
		debugger
		@project = Project.find(params[:project_id])
		@comment = @project.comments.build(params[:comment])
		if @comment.save
			redirect_to projects_path
		else
			render "new"
		end
	end
end

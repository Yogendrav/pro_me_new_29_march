class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :project_new_modal
  before_filter :project_displaying

  def project_new_modal
  	@project = Project.new
    @users = User.all
  end

  def project_displaying
  	@projects = Project.all
  end
end

class Comment < ActiveRecord::Base
  attr_accessible :commenting, :project_id
  belongs_to :project
end

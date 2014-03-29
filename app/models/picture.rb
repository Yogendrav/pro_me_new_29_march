class Picture < ActiveRecord::Base
  attr_accessible :attachment, :project_id
  belongs_to :project
  mount_uploader :attachment, AttachmentUploader
end

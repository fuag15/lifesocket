class ProjectPicture < ActiveRecord::Base
  attr_accessible :picture
  mount_uploader :picture, PictureUploader

  has_many :pictures_projects
  has_many :projects, through: :pictures_projects, foriegn_key: 'project_id'
end

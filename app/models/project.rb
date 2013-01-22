class Project < ActiveRecord::Base
  attr_accessible :blurb, :detail, :name, :rank, :team, :version, :post
  mount_uploader :picture, PictureUploader
  belongs_to :project_category
  has_many :pictures_projects
  has_many :project_pictures, through: :pictures_projects, foriegn_key: 'project_picture_id'
  has_many :projects_project_packages
  has_many :project_packages, through: :projects_project_packages, foriegn_key: 'project_package_id'
end

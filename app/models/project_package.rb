class ProjectPackage < ActiveRecord::Base
  attr_accessible :packaged_version, :version
  mount_uploader :packaged_version, PackagedVersionUploader

  has_many :projects_project_packages
  has_many :projecst, through: :projects_project_packages
end

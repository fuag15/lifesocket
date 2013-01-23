class ProjectsProjectPackage < ActiveRecord::Base
  belongs_to :project
  belongs_to :project_package
end

class PicturesProject < ActiveRecord::Base
  belongs_to :project
  belongs_to :project_picture
end

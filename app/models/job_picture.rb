class JobPicture < ActiveRecord::Base
  attr_accessible :picture
  mount_uploader :picture, PictureUploader
  
  has_many :jobs_pictures
  has_many :jobs, through: :jobs_pictures
end

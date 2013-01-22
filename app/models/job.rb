class Job < ActiveRecord::Base
  attr_accessible :blurb, :detail, :employer, :name, :rank, :picture
  mount_uploader :picture, PictureUploader
  
  belongs_to :job_category
  has_many :jobs_pictures
  has_many :job_pictures, through: :jobs_pictures, foriegn_key: 'job_picture_id'
end

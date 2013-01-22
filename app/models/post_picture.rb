class PostPicture < ActiveRecord::Base
  attr_accessible :picture
  mount_uploader :picture, PictureUploader

  has_many :pictures_posts
  has_many :posts, through: :pictures_posts, foriegn_key: 'post_id'
end

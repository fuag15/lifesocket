class Post < ActiveRecord::Base
  attr_accessible :full, :title, :picture, :created_at
  mount_uploader :picture, PictureUploader

  has_many :pictures_posts
  has_many :post_pictures, through: :pictures_posts
end

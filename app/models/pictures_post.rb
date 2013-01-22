class PicturesPost < ActiveRecord::Base
  belongs_to :post
  belongs_to :post_picture
end

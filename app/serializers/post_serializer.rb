class PostSerializer < ActiveModel::Serializer
  embed :ids, :include => true
  attributes :id, :title, :created_at, :full, :picture

  has_many :post_pictures
end

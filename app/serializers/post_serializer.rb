class PostSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :title, :full, :picture

  has_many :post_pictures
end

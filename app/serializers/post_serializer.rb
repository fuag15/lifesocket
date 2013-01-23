class PostSerializer < ActiveModel::Serializer
  embed :ids, :include => true
  attributes :id, :title, :created_at, :full, :pic, :thumb, :mini, :medium, :large

  has_many :post_pictures

  def pic
    "#{object.picture.url}"
  end

  def thumb
    "#{object.picture.thumb.url}"
  end

  def mini
    "#{object.picture.mini.url}"
  end

  def medium
    "#{object.picture.medium.url}"
  end

  def large
    "#{object.picture.large.url}"
  end
end

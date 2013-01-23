class PostPictureSerializer < ActiveModel::Serializer
  attributes :id, :pic, :thumb, :mini, :medium, :large, :post_id

  def post_id
    "{object.post.id}"
  end

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

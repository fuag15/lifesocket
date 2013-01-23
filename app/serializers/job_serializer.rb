class JobSerializer < ActiveModel::Serializer
  embed :ids, :include => true
  attributes :id, :name, :blurb, :detail, :employer, :rank, :job_category_id, :pic, :thumb, :mini, :medium, :large

  has_many :job_pictures

  def job_category_id
    "#{object.job_category.id}"
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

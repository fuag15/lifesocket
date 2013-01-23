class JobPictureSerializer < ActiveModel::Serializer
  attributes :id, :job_id, :pic, :thumb, :mini, :medium, :large

  def job_id
    "#{object.job.id}"
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

class ProjectPictureSerializer < ActiveModel::Serializer
  attributes :id, :project_id, :pic, :thumb, :mini, :medium, :large

  def project_id
    "#{object.project.id}"
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

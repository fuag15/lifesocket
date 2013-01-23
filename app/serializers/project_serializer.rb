class ProjectSerializer < ActiveModel::Serializer
  embed :ids, :include => true
  attributes :id, :project_category_id, :name, :blurb, :version, :detail, :team, :rank, :pic, :thumb, :mini, :medium, :large

  def project_category_id
    "#{object.project_category.id}"
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

  has_many :project_pictures
  has_many :project_packages
end

class ProjectSerializer < ActiveModel::Serializer
  embed :ids, :include => true
  attributes :id, :project_category_id, :name, :blurb, :version, :detail, :team, :rank, :picture

  def project_category_id
    "#{object.project_category.id}"
  end

  has_many :project_pictures
  has_many :project_packages
end

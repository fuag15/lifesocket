class ProjectCategorySerializer < ActiveModel::Serializer
  embed :ids, :include => true
  attributes :id, :name, :rank

  has_many :projects
end

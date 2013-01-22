class ProjectCategorySerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :name, :rank

  has_many :projects
end

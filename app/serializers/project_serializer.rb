class ProjectSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :name, :blurb, :version, :detail, :team, :rank, :picture
  has_many :project_pictures
  has_many :project_packages
end

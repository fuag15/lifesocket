class ProjectPackageSerializer < ActiveModel::Serializer
  attributes :id, :packaged_version, :version
end

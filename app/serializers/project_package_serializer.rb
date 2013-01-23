class ProjectPackageSerializer < ActiveModel::Serializer
  attributes :id, :packaged_version, :version, :project_id

  def project_id
    "#{object.project.id}"
  end

  def packaged_version
    "#{object.version.url}"
  end
end

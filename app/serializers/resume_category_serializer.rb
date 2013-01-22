class ResumeCategorySerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :name, :rank

  has_many :resume_statistics
end

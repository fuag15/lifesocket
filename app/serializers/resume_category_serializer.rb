class ResumeCategorySerializer < ActiveModel::Serializer
  embed :ids, :include => true
  attributes :id, :name, :rank

  has_many :resume_statistics
end

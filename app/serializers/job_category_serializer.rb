class JobCategorySerializer < ActiveModel::Serializer
  embed :ids, :include => true

  attributes :id, :name, :rank

  has_many :jobs
end

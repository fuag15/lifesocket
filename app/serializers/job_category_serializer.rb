class JobCategorySerializer < ActiveModel::Serializer
  embed :ids

  attributes :id, :name, :rank

  has_many :jobs
end

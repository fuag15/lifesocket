class JobSerializer < ActiveModel::Serializer
  embed :ids
  attributes :id, :name, :blurb, :detail, :employer, :rank, :picture
  has_many :job_pictures
end

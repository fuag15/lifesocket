class ProjectCategory < ActiveRecord::Base
  attr_accessible :name, :rank

  has_many :projects
end

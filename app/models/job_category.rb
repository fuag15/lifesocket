class JobCategory < ActiveRecord::Base
  attr_accessible :name, :rank
  
  has_many :jobs
end

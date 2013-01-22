class ResumeCategory < ActiveRecord::Base
  attr_accessible :name, :rank

  has_many :resume_statistics
end

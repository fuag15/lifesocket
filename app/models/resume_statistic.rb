class ResumeStatistic < ActiveRecord::Base
  attr_accessible :name, :rank

  belongs_to :resume_category
end

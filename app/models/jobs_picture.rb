class JobsPicture < ActiveRecord::Base
  belongs_to :job
  belongs_to :job_picture
end

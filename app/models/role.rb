class Role < ActiveRecord::Base
  attr_accessible :name

  has_many :users, through: :roles_user
end

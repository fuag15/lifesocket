class Role < ActiveRecord::Base
  attr_accessible :string

  has_many :users, through: :roles_user
end

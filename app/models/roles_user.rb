class RolesUser < ActiveRecord::Base
  attr_accessible :references, :references

  belongs_to :user
  belongs_to :role

end

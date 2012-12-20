class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.roles.includes? 'admin'
      can :manage, :all
    else
      can :manage, :all # change once launched
    end
  end
end

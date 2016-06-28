class Ability
  include CanCan::Ability

  def initialize user
    user ||= User.new
    if user.admin?
      can :manage, :all
    else
      can :read, :all
      can [:edit, :update], User
      can [:create, :destroy], Request
    end
  end
end

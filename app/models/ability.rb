class Ability < ActiveRecord::Base
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
      user ||= User.new # guest user (not logged in)

      if user.has_role? :admin
          can :manage, :all
      elsif user.has_role? :user
          can :read, :all
          can :manage, BlogArticle, user: user
          can :create, BlogArticle
      else
          can :read, :all
      end
  end
end

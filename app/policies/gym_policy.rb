class GymPolicy < ApplicationPolicy
include UsersHelper
  class Scope
    def initialize(user, scope)
      @user = user
      @scope = scope
    end

    def resolve
      if @user.account.name == "owner"
        @scope.where(user_id: @user)
      else
        @scope.all
      end
    end
  end

  def create?
    return true if user_is_owner? || user_is_admin?
  end

  def update?
    return true if user_is_owner? && user_own_gym?
    user_is_admin?
  end
end
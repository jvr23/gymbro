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
    @user.account.name == 'owner' || @user.account.name == 'admin'
    # user_is_owner? || user_is_admin?
  end

  def update?
    @user.account.name == 'owner' || @user.account.name == 'admin'
  end

  def destroy?
    @user.account.name == 'owner' || @user.account.name == 'admin'  
  end
end
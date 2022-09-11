class VisitPolicy < ApplicationPolicy
  include UsersHelper

    def create?
      # return true
      @user.account.name == 'premium' || @user.account.name == 'admin'

      # if user_is_premium? || user_is_admin?
    end

  end
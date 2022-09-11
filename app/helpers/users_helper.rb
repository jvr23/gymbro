module UsersHelper
  def user_is_owner?
    current_user.account.name == "owner"
  end

  def user_own_gym?
    @Gym.user_id == @user.id
  end
  
  def user_is_admin? 
    current_user.account.name == "admin"
  end

  def user_is_premium?
    current_user.account.name == "premium"
  end

  def user_owns_gym?
    user_is_owner? && user_own_gym?
  end
end

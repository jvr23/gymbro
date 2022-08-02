module UsersHelper
  def user_is_owner?
    @user.account.name == "owner"
  end

  def user_own_gym?
    @Gym.user_id == @user.id
  end
  
  def user_is_admin? 
    @user.account.name == "admin"
  end

  def user_is_premium?
    @user.account.name == "premium"
  end
end

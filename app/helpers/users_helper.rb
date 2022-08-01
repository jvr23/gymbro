module UsersHelper
  def user_is_owner?
    current_user.account.name == "owner"
  end

  def user_own_gym?
    @Gym.user_id == current_user.id
  end
  
  def user_is_admin? 
    current_user.account.name == "admin"
  end
end

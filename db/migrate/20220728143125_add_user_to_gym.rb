class AddUserToGym < ActiveRecord::Migration[7.0]
  def change
    add_reference :gyms, :user, null: false, foreign_key: true
  end
end

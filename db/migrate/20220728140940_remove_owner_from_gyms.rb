class RemoveOwnerFromGyms < ActiveRecord::Migration[7.0]
  def change
    remove_column :gyms, :owner_id
    # remove_reference :gyms, :owner_id, null: false, foreign_key: true
  end
end

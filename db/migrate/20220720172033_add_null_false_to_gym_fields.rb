class AddNullFalseToGymFields < ActiveRecord::Migration[7.0]
  def change
    change_column_null :gyms, :name, false
    change_column_null :gyms, :address, false
    change_column_null :gyms, :opens, false
    change_column_null :gyms, :closes, false
  end
end

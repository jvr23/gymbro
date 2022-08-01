class CreateGyms < ActiveRecord::Migration[7.0]
  def change
    create_table :gyms do |t|
      t.string :name
      t.string :address
      t.time :opens
      t.time :closes
      t.references :owner, null: false, foreign_key: {to_table: :users}

      t.timestamps
    end
  end
end

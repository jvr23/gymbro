class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :lastname, null: false
      t.string :mail, null: false, unique:true
      t.integer :age, null: false
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end

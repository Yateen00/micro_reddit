class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :password, null: false
      t.integer :age, null: false
      t.string :gender, null: false

      t.timestamps
    end
    add_index :users, :username, unique: true
  end
end

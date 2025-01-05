class CreatePosts < ActiveRecord::Migration[8.0]
  def change
    create_table :posts do |t|
      t.string :title, default: ""
      t.string :body, null: false
      t.integer :likes, default: 0
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

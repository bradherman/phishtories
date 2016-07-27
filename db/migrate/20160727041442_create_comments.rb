class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :body

      t.integer :user_id
      t.integer :story_id
      t.integer :parent_id

      t.boolean :flagged, default: false
      t.boolean :removed, default: false

      t.timestamps
    end

    add_index :comments, :user_id
    add_index :comments, :story_id
    add_index :comments, :parent_id
  end
end

class AddIndicesToStories < ActiveRecord::Migration[5.0]
  def change
    add_index :stories, :user_id
  end
end

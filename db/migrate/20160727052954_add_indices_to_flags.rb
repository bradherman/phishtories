class AddIndicesToFlags < ActiveRecord::Migration[5.0]
  def change
    add_index :flags, :user_id
  end
end

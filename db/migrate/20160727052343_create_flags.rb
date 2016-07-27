class CreateFlags < ActiveRecord::Migration[5.0]
  def change
    create_table :flags do |t|
      t.integer :user_id

      t.references :flaggable, polymorphic: true, index: true

      t.timestamps
    end
  end
end

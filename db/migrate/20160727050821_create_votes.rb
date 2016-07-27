class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.integer :user_id

      t.references :voteable, polymorphic: true, index: true

      t.timestamps
    end

    add_index :votes, :user_id
  end
end

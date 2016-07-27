class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.text    :body

      t.string  :title
      t.string  :author
      t.string  :author_location
      t.string  :author_email

      t.string  :venue
      t.string  :location
      t.date    :date

      t.integer :period # 1.0, 2.0, 3.0

      t.integer :votes, default: 0

      t.boolean :flagged, default: false
      t.boolean :removed, default: false

      t.timestamps
    end
  end
end

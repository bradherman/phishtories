class RemoveVotesFromStories < ActiveRecord::Migration[5.0]
  def change
    remove_column :stories, :votes
  end
end

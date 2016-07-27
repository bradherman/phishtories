class Comment < ApplicationRecord
  validates :body, :story_id, :user_id, presence: true
  validates_associated :user, :story, :parent

  has_many :children, class_name: 'Comment', foreign_key: 'parent_id'

  belongs_to :user
  belongs_to :story
  belongs_to :parent, class_name: 'Comment', foreign_key: 'parent_id'
end

class Comment < ApplicationRecord
  validates :body, :story_id, :user_id, presence: true
  validates_associated :user, :story, :parent

  has_one :parent, class_name: 'Comment'

  belongs_to :user
  belongs_to :story
end

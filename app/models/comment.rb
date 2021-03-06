class Comment < ApplicationRecord
  validates :body, :story_id, :user_id, presence: true
  validates_associated :user, :story, :parent

  has_many :children, class_name: 'Comment', foreign_key: 'parent_id'
  has_many :votes, as: :voteable
  has_many :flags, as: :flaggable

  normalize_attributes :body

  belongs_to :user,   counter_cache: true
  belongs_to :story,  counter_cache: true
  belongs_to :parent, class_name: 'Comment', foreign_key: 'parent_id', counter_cache: true
end

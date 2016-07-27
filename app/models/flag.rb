class Flag < ApplicationRecord
  validates :user_id, :voteable_id, :voteable_type, presence: true

  belongs_to :flaggable, polymorphic: true, counter_cache: true
  belongs_to :users
end

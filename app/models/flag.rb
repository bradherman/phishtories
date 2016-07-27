class Flag < ApplicationRecord
  validates :user_id, :flaggable_id, :flaggable_type, presence: true

  belongs_to :flaggable, polymorphic: true, counter_cache: true
  belongs_to :user
end

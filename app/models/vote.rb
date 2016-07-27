class Vote < ApplicationRecord
  validates :user_id, :voteable_id, :voteable_type, presence: true

  belongs_to :voteable, polymorphic: true, counter_cache: true
end

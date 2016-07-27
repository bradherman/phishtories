class Vote < ApplicationRecord
  validates :user_id, :voteable_id, :voteable_type, presence: true
end

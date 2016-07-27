class Story < ApplicationRecord
  validates :title, :author, :flagged, :removed, presence: true
  validates :body, presence: true, length: { minimum: 250 }
  validates :votes, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :author_email, presence: true, email: true
end

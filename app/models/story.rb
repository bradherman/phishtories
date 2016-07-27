class Story < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 250 }
  validates presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :author_email, presence: true, email: true

  normalize_attributes :author, :location, :venue, :author_location, :date, :period

  belongs_to :user
end

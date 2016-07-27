class Story < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 250 }
  validates :author_email, presence: true, email: true

  normalize_attributes :author, :location, :venue, :author_location, :date, :period

  belongs_to :user, counter_cache: true

  has_many :comments
  has_many :votes, as: :voteable
  has_many :flags, as: :flaggable
end

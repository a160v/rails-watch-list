class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  has_and_belongs_to_many :lists

  validates :movie, :list, presence: true
  validates_uniqueness_of :movie_id, scope: [:list_id]
  validates :comment, length: { minimum: 6 }
end

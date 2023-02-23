class Movie < ApplicationRecord
  has_many :bookmarks # dependent: :restrict_with_exception
  has_many :lists, through: :bookmarks

  validates :title, :overview, presence: true
  validates_uniqueness_of :title
end

class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie, :list, presence: true
  validates_uniqueness_of :movie_id, scope: [:list_id]
  validates :comment, length: { minimum: 6 }

  # before_destroy :check_movie_presence

  # private

  # def check_movie_presence
  #   if movie.bookmarks.count > 1
  #     raise ActiveRecord::InvalidForeignKey
  #   end
  # end
end

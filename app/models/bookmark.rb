class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie_id, :list_id, presence: true, uniqueness: {
    scope: %i[ movie_id list_id]
  }
  validates :comment, length: { minimum: 6 }
end

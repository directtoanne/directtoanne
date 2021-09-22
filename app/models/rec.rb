class Rec < ApplicationRecord
  has_one_attached :photo
  acts_as_taggable_on :tags

  scope :all_books, -> { where(category: "Book") }
  scope :all_movies, -> { where(category: "Movie") }
  scope :all_shows, -> { where(category: "Show") }
  scope :all_fanfics, -> { where(category: "Fanfic") }
  scope :all_games, -> { where(category: "Game") }
  scope :all_misc, -> { where(category: "Misc") }

  def rec_types
    ["Book", "Movie", "Show", "Fanfic", "Game", "Misc"]
  end
end

class Rec < ApplicationRecord
  has_one_attached :photo
  acts_as_taggable_on :tags

  def rec_types
    ["Book", "Movie", "Show", "Fanfic", "Game", "Misc"]
  end
end

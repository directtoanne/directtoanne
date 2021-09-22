class Rec < ApplicationRecord
  has_one_attached :photo
  acts_as_taggable_on :tags
end

class Article < ApplicationRecord
  belongs_to :blog
  acts_as_taggable # Alias for acts_as_taggable_on :tags
  acts_as_taggable_on :category
end

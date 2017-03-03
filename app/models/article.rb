class Article < ApplicationRecord
  belongs_to :blog, :foreign_key => :blog_id
  acts_as_taggable # Alias for acts_as_taggable_on :tags
  acts_as_taggable_on :category

  validates :title, presence: true
end

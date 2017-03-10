class Article < ApplicationRecord
  belongs_to :blog, :foreign_key => :blog_id
  belongs_to :story, :foreign_key => :story_id
end

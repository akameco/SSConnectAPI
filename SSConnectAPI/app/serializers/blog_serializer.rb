class BlogSerializer < ActiveModel::Serializer
  attributes :id, :title, :url, :rss

  has_many :articles

end
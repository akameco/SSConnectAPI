class BlogSerializer < ActiveModel::Serializer
  attributes :id, :title, :url, :rss
end

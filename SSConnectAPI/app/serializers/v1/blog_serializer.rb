module V1
  class BlogSerializer < ActiveModel::Serializer
    attributes :id, :title, :url, :rss
  end
end
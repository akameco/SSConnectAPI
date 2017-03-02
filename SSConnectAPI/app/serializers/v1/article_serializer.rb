class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :blog_id
end
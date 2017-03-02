class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :blog_id

  has_one :blog, serealizer:BlogSerializer

  def articles_count
    object.articles.count
  end
end
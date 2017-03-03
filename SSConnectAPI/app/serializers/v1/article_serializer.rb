module V1
  class ArticleSerializer < ActiveModel::Serializer
    attributes :id, :title, :blog_id, :posted_at, :url

    has_one :blog, serealizer: BlogSerializer

    def articles_count
      object.articles.count
    end
  end
end

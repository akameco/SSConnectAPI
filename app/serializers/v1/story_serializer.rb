module V1
  class StorySerializer < ActiveModel::Serializer
    attributes :id, :title, :tag_list
    has_many :articles, each_serializer: ArticleSerializer, root: nil
  end
end
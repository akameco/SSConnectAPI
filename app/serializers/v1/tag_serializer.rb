module V1
  class TagSerializer < ActiveModel::Serializer
    attributes :id, :name, :taggings_count
    has_one :story, serealizer: StorySerializer
  end
end

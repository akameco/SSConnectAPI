module V1
  class StoriesController < ApplicationController
    before_action :set_entity, only: [:show]

    # articles GET
    # show_all_article
    def index
      page = (params[:page] || 1).to_i
      q = params[:q] || ''

      if q == ''
        stories = Story.all
      else
        stories = Story.where('title LIKE ?', "%#{q}%")
      end

      #res = stories.includes(articles: [:blog]).includes([:taggings]).page(page)
      res = stories.includes(articles: [:blog]).order('last_posted_at DESC').page(page)
     # binding.pry
      render json: res, include: [{articles: [:blog]}], each_serializer: V1::StorySerializer
    end

  end
end

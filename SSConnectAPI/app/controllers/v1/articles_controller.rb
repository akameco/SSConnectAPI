module V1
  class ArticlesController < ApplicationController
    #     pages GET    /pages(.:format)          pages#index
    #           POST   /pages(.:format)          pages#create
    #  new_page GET    /pages/new(.:format)      pages#new
    # edit_page GET    /pages/:id/edit(.:format) pages#edit
    #      page GET    /pages/:id(.:format)      pages#show
    #           PUT    /pages/:id(.:format)      pages#update
    #           DELETE /pages/:id(.:format)      pages#destroy

    # articles GET
    # show_all_article
    def index
      if params[:page].nil?
        p = 1
      else
        p = params[:page].to_i
      end
      @articles = Article.page(p)
      render json: @articles, each_serializer: V1::ArticleSerializer, root: nil
    end
  end
end
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

      if params[:blog_id].nil?
        articles = Article.all
      else
        articles = Blog.find(params[:blog_id]).articles
      end

      unless params[:q].nil?
        articles = articles.where('title LIKE ?', "%#{params[:q]}%")
      end

      res = articles.includes(:blog).order('posted_at DESC').page(p)
      render json: res, each_serializer: V1::ArticleSerializer, root: nil
    end
  end
end
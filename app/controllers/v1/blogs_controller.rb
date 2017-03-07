module V1
  class BlogsController < ApplicationController
    before_action :set_entity, only:[:show]
    def index
      blogs = Blog.all
      render json:blogs, each_siliarizer:V1::BlogSerializer,root:nil
    end
    def show
      render json:@blog, sirializer:V1::BlogSerializer, root:nil
    end
    private
    def set_entity
      @blog = Blog.find(params[:id])
    end
  end
end

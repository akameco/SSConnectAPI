ActiveAdmin.register Article do
  permit_params :url

  controller do
    def scoped_collection
      Article.includes(:blog, :story)   # includes User / Brand models in listing products
    end
  end
  index do
    selectable_column
    id_column
    column :url
    column :blog_id
    column :story_id
    column :posted_at
    column :updated_at
    column :created_at
    actions
  end

  filter :url
  filter :blog_id
  filter :story_id
  filter :posted_at
  filter :updated_at
  filter :created_at

end

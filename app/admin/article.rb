ActiveAdmin.register Article do

  permit_params :title, :url, :category_list

  index do
    selectable_column
    id_column
    column :title
    column :url
    column :blog_id
    column :story_id
    column :posted_at
    column :updated_at
    column :created_at
    column :category_list
    actions
  end

  filter :title
  filter :url
  filter :blog_id
  filter :story_id
  filter :posted_at
  filter :updated_at
  filter :created_at
  filter :category_list

end

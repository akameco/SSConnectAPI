ActiveAdmin.register Article do

  permit_params :title, :url

  index do
    selectable_column
    id_column
    column :title
    column :url
    column :blog_id
    column :posted_at
    column :updated_at
    column :created_at
    actions
  end

  filter :title
  filter :url
  filter :blog_id
  filter :posted_at
  filter :updated_at
  filter :created_at

end

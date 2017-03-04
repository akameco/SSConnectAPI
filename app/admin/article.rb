ActiveAdmin.register Article do

  permit_params :title, :url

  index do
    selectable_column
    id_column
    column :title
    column :url
    column :posted_at
    column :blog_id
    column :updated_at
    column :created_at
    actions
  end

  filter :title
  filter :url
  filter :posted_at
  filter :blog_id
  filter :updated_at
  filter :created_at

end

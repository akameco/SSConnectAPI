ActiveAdmin.register Story do
  permit_params :title,:tag_list, :last_posted_at

  index do
    selectable_column
    id_column
    column :title
    column :tag_list
    column :last_posted_at
    column :updated_at
    column :created_at
    actions
  end

  filter :title
  filter :tag_list
  filter :last_posted_at
  filter :updated_at
  filter :created_at

end

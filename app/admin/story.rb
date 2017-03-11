ActiveAdmin.register Story do
  permit_params :title, :last_posted_at

  index do
    selectable_column
    id_column
    column :title
    column :last_posted_at
    column :updated_at
    column :created_at
    actions
  end

  filter :title
  filter :last_posted_at
  filter :updated_at
  filter :created_at

end

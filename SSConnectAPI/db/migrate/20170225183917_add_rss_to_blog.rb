class AddRssToBlog < ActiveRecord::Migration[5.0]
  def change
    add_column :blogs, :rss, :string
  end
end

class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.string :title
      t.datetime :last_posted_at

      t.timestamps
    end
    add_index :stories, :title
    add_index :stories, :last_posted_at
  end
end

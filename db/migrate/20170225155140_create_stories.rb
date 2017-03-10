class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.string :title

      t.timestamps
    end
    add_index :stories, :title
  end
end

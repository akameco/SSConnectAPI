class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :url
      t.datetime :posted_at
      t.references :blog, foreign_key: true, index: true
      t.references :story, foreign_key: true, index: true

      t.timestamps
    end
    add_index :articles, :posted_at
  end
end

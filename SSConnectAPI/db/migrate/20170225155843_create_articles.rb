class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.datetime :posted_at
      t.references :blog, foreign_key: true

      t.timestamps
    end
  end
end

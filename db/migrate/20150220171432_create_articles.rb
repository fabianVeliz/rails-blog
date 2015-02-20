class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :tags
      t.string :image
      t.string :body

      t.timestamps
    end
  end
end

class CreateArticlesCategories < ActiveRecord::Migration
  def change
    create_table :articles_categories do |t|
      t.references :article, index: true
      t.references :category, index: true
    end
    add_foreign_key :articles_categories, :article
    add_foreign_key :articles_categories, :category
  end
end

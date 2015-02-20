class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.string :avatar
      t.string :body
      t.string :post
      t.belongs_to :post, index: true

      t.timestamps
    end
    add_foreign_key :comments, :posts
  end
end

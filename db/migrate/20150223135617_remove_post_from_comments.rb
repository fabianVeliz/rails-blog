class RemovePostFromComments < ActiveRecord::Migration
  def change
    remove_column :comments, :post, :string
  end
end

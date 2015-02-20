class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :author
      t.string :avatar
      t.string :body
      t.belongs_to :comment, index: true

      t.timestamps null: false
    end
    add_foreign_key :answers, :comments
  end
end

class Article < ActiveRecord::Base
  has_many :comments
  has_and_belongs_to_many :categories

  validates :categories, presence: true
end

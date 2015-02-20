class Answer < ActiveRecord::Base
  belongs_to :comment
  has_one :post, through: :comment
end

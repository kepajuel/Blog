class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :User
  has_rich_text :body
end

class Post < ApplicationRecord
  belongs_to :User
  has_rich_text :cuerpo
  has_many :comments, dependent: :destroy
end

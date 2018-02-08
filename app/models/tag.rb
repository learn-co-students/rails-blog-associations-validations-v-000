class Tag < ActiveRecord::Base
#Tag for the uniqueness of name
  validates :name, uniqueness: true

  has_many :post_tags
  has_many :posts, through: :post_tags

end

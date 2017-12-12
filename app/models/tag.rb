class Tag < ActiveRecord::Base
  validates :name, uniqueness:true

  has_many :posts, through: :post_tags
  has_many :users, through: :posts
  has_many :post_tags
end

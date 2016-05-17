class Tag < ActiveRecord::Base
  #belongs_to :post
  #has_many :posts
  has_many :posts, through: :post_tags
  validates :name, uniqueness: true
end

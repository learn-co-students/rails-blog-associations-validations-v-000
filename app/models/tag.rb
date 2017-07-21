class Tag < ActiveRecord::Base
  has_many :posts
  has_many :posts, through: :post_tags
  has_many :post_tags

  validates :name, presence: true
  validates :name, uniqueness: true
end

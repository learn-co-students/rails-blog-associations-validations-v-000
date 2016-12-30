class User < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true
  has_many :post_tags
  has_many :posts
  has_many :tags, through: :post_tags
end

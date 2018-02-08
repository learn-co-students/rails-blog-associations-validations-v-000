class User < ActiveRecord::Base
  validates :name, uniqueness: true
  validates :name, presence: true
  has_many :posts
  has_many :tags, through: :post
end

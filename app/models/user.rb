class User < ActiveRecord::Base
  has_many :posts
  has_many :tags
  validates :name, uniqueness: true, presence: true
end

class User < ActiveRecord::Base
#User for the uniqueness of name
  validates :name, uniqueness: true
  validates :name, presence:true
  has_many :posts
end

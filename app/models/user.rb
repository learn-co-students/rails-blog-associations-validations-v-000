class User < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true

  has_many :posts
  has_many :user_tags
  has_many :tags, through: :user_tags


end

class User < ActiveRecord::Base
  has_many :posts
  has_many :tags
  
  validates_presence_of :name
  validates_uniqueness_of :name
end

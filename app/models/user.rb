class User < ActiveRecord::Base
  has_many :posts

  validates :name, presense: true 
end

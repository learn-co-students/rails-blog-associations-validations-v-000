class User < ActiveRecord::Base
<<<<<<< HEAD
  validates :name, presence: true, uniqueness: true
  has_many :posts
=======
  # has_many :posts
  #validates :name, presence: true, uniqueness: true
>>>>>>> master
end

class User < ActiveRecord::Base
<<<<<<< HEAD
  has_many :posts

  validates_uniqueness_of :name
  validates_presence_of :name
=======
>>>>>>> 5ece51e4ab674d5d36872fa2a900b7f86e76357a
end

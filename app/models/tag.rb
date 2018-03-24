class Tag < ActiveRecord::Base
<<<<<<< HEAD
  has_many :post_tags
  has_many :posts, :through => :post_tags

  validates_uniqueness_of :name
=======
>>>>>>> 5ece51e4ab674d5d36872fa2a900b7f86e76357a
end

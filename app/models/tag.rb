class Tag < ActiveRecord::Base
  has_many :post_tags
  has_many :posts, through: :post_tags

  #validates :name, uniqueness: true
  ###ooooh! even better!
  validates_uniqueness_of :name
end

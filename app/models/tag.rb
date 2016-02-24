class Tag < ActiveRecord::Base
  has_many :post_tag
  has_many :posts, through: :post_tag

  validates_uniqueness_of :name
end

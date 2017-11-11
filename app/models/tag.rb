class Tag < ActiveRecord::Base
  validates :name, uniqueness: true
  has_many :posts, through: :post_tag
  has_many :post_tag
end

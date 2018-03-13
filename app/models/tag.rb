class Tag < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_many :posts, through: :post_tags
  has_many :post_tags
end

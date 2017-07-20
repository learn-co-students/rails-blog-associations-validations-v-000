class Tag < ActiveRecord::Base
  validates :name, uniqueness: true
  belongs_to :post
  has_many :post_tags
  has_many :posts, through: :post_tags
end

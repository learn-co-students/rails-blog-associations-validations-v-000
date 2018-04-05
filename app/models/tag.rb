class Tag < ActiveRecord::Base
  validates :name, uniqueness: { case_sensitive: false }
  has_many :post_tags
  has_many :posts, through: :post_tags
end

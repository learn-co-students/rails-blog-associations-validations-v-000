class Tag < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  has_many :post_tag
  has_many :posts, through: :post_tag
end

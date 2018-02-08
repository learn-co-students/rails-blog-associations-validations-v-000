class Tag < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true
  #note: redundancy
  has_many :post_tags
  has_many :posts, through: :post_tags
end

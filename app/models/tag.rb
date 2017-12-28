class Tag < ActiveRecord::Base
  validates :name, uniqueness: true

  has_many :post_tags
  has_many :tags, through: :post_tags
end

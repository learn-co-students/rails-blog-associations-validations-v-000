class Tag < ActiveRecord::Base
  # Associations
  has_many :post_tags
  has_many :posts, through: :post_tags

  # Validations
  validates :name, uniqueness: true
end

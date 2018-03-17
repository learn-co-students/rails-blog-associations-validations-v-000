class Tag < ActiveRecord::Base
  has_many :post_tags
  has_many :posts, through: :post_tags

  # validates :name, uniqueness: true

  # making the validations less verbose and more "natural"...

  validates_uniqueness_of :name
end

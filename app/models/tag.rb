class Tag < ActiveRecord::Base
  has_many :post_tag_links
  has_many :posts, through: :post_tag_links

  validates :name, uniqueness: true

end

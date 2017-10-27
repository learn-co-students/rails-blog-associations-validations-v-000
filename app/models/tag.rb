class Tag < ActiveRecord::Base
   has_many :post_tags
   has_many :posts, through: :post_tags
   belongs_to :post
   validates :name, uniqueness: true
end

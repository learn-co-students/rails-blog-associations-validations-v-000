class Tag < ActiveRecord::Base
  belongs_to :post
  has_many :post_tags
end

class Tag < ActiveRecord::Base
	has_many :post_tags
	has_many :post, through: :post_tags
	
	validates_uniqueness_of :name
end

class User < ActiveRecord::Base
	has_many :posts 
	has_many :post_tags
	has_many :tags, through: :post_tags

	validates :name, presence: true, uniqueness: true 
end

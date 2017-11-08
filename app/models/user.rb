class User < ActiveRecord::Base
	has_many :posts
	has_many :tags, through: :post_tags

	validates :name, uniqueness: true
	validates :name, presence: true
end

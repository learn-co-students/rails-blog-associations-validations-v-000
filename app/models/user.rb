class User < ActiveRecord::Base
    validates :name, uniqueness: true, presence: true
    has_many :posts
    has_many :post_tags
    has_many :tags, through: :post_tags
end

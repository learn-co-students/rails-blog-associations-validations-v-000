class User < ActiveRecord::Base
    has_many :post_tags
    has_many :tags, through: :post_tags
    has_many :posts
    
    validates :name, presence: true
    validates :name, uniqueness: true
end

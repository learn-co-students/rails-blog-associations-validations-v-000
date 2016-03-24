class User < ActiveRecord::Base
    has_many :posts
    validates_presence_of :name
    validates :name, uniqueness: true
end

class User < ActiveRecord::Base
    validates :name, presence: true
    validates :name, uniqueness: true
    #validates :name, presence: true, uniqueness: { case_sensitive: false }
    has_many :posts
end

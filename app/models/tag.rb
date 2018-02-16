class Tag < ActiveRecord::Base
    validates :name, presence: true
    validates :name, uniqueness: true
    #validates :name, presence: true, uniqueness: { case_sensitive: false }


    has_many :post_tags
    has_many :posts, through: :post_tags

end

class Tag < ActiveRecord::Base
	has_many :postTags
 	has_many :posts, through: :postTags

 	validates :name, uniqueness: true
end

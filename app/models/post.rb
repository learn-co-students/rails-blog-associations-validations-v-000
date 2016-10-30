class Post < ActiveRecord::Base
	validates :name,:content, presence: true


	 has_many :tags, :through => :post_tags
 	 belongs_to :user
 	 has_many :tags
end

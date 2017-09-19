class Post < ActiveRecord::Base
  
  belongs_to :user
  has_many :post_tags
  has_many :tags, :through => :post_tags

#Validates that the specified attributes are not blank
  validates_presence_of :name, :content

end

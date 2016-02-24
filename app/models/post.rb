class Post < ActiveRecord::Base
  belongs_to :user
  has_many :post_tag
  has_many :tags, through: :post_tag  

  validates_presence_of :name, :content
end

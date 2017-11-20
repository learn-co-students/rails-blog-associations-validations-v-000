class PostTag < ActiveRecord::Base

  belongs_to :user

  has_many :tags, :through => :post_tags, :source => :name
end

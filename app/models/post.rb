class Post < ActiveRecord::Base
  has_many :post_tags
  belongs_to :user
  has_many :tags, :through => :post_tags

  validates :name, presence: true
  validates :content, presence: true
end

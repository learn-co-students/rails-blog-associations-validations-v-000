class Post < ActiveRecord::Base
  belongs_to :user
  validates :name, presence: true
  validates :content, presence: true
  has_many :tags, through: :post_tags
  has_many :post_tags
end

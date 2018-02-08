class Post < ActiveRecord::Base
#Post for the presence of both name and content
  validates :name, presence: true
  validates :content, presence: true

  belongs_to :user

  has_many :post_tags
  has_many :tags, through: :post_tags
end

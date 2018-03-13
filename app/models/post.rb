class Post < ActiveRecord::Base
  belongs_to :user
  has_many :post_tags
  has_many :tags, through: :post_tags

  validates :name, presence: true, uniqueness: true
  validates :content, presence: true


end

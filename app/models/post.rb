class Post < ActiveRecord::Base
  belongs_to :user
  has_many :tags, through: :posts_tags
  has_many :posts_tags

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :content, presence: true

end

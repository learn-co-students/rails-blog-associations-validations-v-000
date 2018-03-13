class Post < ActiveRecord::Base
  belongs_to :user
  has_many :postTags
  has_many :tags, through: :postTags

  validates :name, presence: true
  validates :content, presence: true
end

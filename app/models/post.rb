class Post < ActiveRecord::Base
  validates :name, presence: true
  validates :content, presence: true
  belongs_to :user
  has_many :tags
end

class Post < ActiveRecord::Base
  belongs_to :user
  has_many :tags

  validates :name, :content, presence: true
end

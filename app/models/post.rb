class Post < ActiveRecord::Base
  has_and_belongs_to_many :tags
  belongs_to :user

  validates :name, presence: true
  validates :content, presence: true
end

class Post < ActiveRecord::Base
#Post for the presence of both name and content
  validates :name, presence: true
  validates :content, presence: true

  belongs_to :user
  has_and_belongs_to_many :tags
end

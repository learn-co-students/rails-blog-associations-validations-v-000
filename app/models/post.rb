class Post < ActiveRecord::Base
  belongs_to :user
  has_many :tags

  validates_presence_of :name
  validates_presence_of :content

end

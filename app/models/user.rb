class User < ActiveRecord::Base
  has_many :posts

  # validates :name, presence: true, uniqueness: true
  validates_uniqueness_of :name
  validates_presence_of :name
end
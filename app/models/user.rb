class User < ActiveRecord::Base
  has_many :posts

  #better
  validates_presence_of :name
  validates_uniqueness_of :name
  #validates :name, presence: true
  #validates :name, uniqueness: true
end

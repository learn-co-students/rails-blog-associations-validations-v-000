class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
#  validates_uniqueness_of :name
#  validates_presence_of :name
  has_many :posts
end

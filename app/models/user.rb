class User < ActiveRecord::Base
  has_many :posts

  validates :name, presence: true, allow_blank: false
  validates :name, uniqueness: true
end

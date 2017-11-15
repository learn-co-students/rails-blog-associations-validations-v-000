class Tag < ActiveRecord::Base
#Tag for the uniqueness of name
  validates :name, uniqueness: true
  has_and_belongs_to_many :posts
end

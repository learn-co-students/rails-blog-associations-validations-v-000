class Tag < ActiveRecord::Base
  validates :name, uniqueness: true
  has_one :postTag
  has_many :posts, through: :postTag
end

class Tag < ActiveRecord::Base
  has_many :PostTags
  has_many :posts, through: :PostTags

  validates :name, uniqueness: true
end

class User < ActiveRecord::Base
  #  Associations
  has_many :posts

  # Validations
  validates :name, presence: true
  validates :name, uniqueness: true
end

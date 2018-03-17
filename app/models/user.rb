class User < ActiveRecord::Base
  has_many :posts

  # validates :name, presence: true, uniqueness: true

  # a more natural way to state the above validations would be...

  validates_uniqueness_of :name
  validates_presence_of :name
end

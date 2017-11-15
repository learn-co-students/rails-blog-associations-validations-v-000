class User < ActiveRecord::Base
#User for the uniqueness of name
  validates :name, uniqueness: true
end

class Tag < ActiveRecord::Base
#Tag for the uniqueness of name
  validates :name, uniqueness: true
end

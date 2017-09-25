class UsersController < ApplicationController
  validates :name, presence: true, uniqueness: true
  has_many :posts
end

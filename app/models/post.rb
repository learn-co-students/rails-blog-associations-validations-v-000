class Post < ActiveRecord::Base
  belongs_to :user
  has_many :posttags
  has_many :tags, through: :posttags
  validates :name, presence: true, uniqueness: true
  validates :content, presence:true,uniqueness:true
end

class Post < ActiveRecord::Base

  belongs_to :user
  
  has_many :post_tag
  has_many :tags, through: :post_tag

  validates :name, presence: true
  validates :content, presence: true

end

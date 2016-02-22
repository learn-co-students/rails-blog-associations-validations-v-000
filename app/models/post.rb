class Post < ActiveRecord::Base
  validates :name, :content, presence: true


  has_many :tags, through: :post_tags
  has_many :post_tags
  belongs_to :user

end

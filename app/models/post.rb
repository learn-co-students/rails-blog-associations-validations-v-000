class Post < ActiveRecord::Base
  has_many :post_tag_links
  has_many :tags, through: :post_tag_links
  belongs_to :user

  validates :name, presence: true
  validates :content, presence: true

end

class Post < ActiveRecord::Base
  validates :name, :content, presence: true

  belongs_to :user

  #note: redundancy
  has_many :post_tags
  has_many :tags, through: :post_tags

end

class Post < ActiveRecord::Base
  # Associations
  belongs_to :user
  has_many :post_tags
  has_many :tags, through: :post_tags

  # Validations
  validates :name, presence: true
  validates :content, presence: true
end

class Post < ActiveRecord::Base
  belongs_to :user
  has_many :post_tags
  has_many :tags, through: :post_tags  

  validates :name, presence: true
  validates :content, presence: true

  accepts_nested_attributes_for :tags

  def tags_attributes=(tags)
    binding.pry
    tags[:tag].each do |tag|
      Tag.find_or_create(tag)
    end
  end
end

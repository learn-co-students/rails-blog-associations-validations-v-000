class Post < ActiveRecord::Base

  belongs_to :user
  has_many :post_tags
  has_many :tags, through: :post_tags 

  validates :name, presence: true, allow_blank: false
  validates :content, presence: true, allow_blank: false

  #accepts_nested_attributes_for :tags

  def tags_attributes=(tag_attributes)
    tag_attributes.each do |tag_attribute|
      tag = Tag.find_or_create_by(tag_attribute)
      self.tags << tag
    end 
  end
  
end #ends class

class Post < ActiveRecord::Base
  validates_presence_of :name, :content

  belongs_to :user
  has_many :tag_posts
  has_many :tags, through: :tag_posts

  accepts_nested_attributes_for :tags, reject_if: proc { |attributes| attributes['name'].blank?}

  def tags_attributes=(tags_attributes)
    tags_attributes.values.each do |tag_attributes|
      tag = Tag.find_or_create_by(tag_attributes)
      self.tags << tag
    end
  end

end

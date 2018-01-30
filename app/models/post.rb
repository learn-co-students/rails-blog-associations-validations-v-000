class Post < ActiveRecord::Base
  validates_presence_of :name, :content
  belongs_to :user
  has_many :post_tags
  has_many :tags, through: :post_tags

  def tag_names
    self.tags.map(&:name).join(", ")
  end
end

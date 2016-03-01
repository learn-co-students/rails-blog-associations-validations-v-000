class Post < ActiveRecord::Base
  validates :name, presence: true
  validates :content, presence: true
  belongs_to :user
  has_many :post_tags
  has_many :tags, through: :post_tags

  def tags_attributes=(attributes)
    self.tags.build(attributes["0"])
  end
end

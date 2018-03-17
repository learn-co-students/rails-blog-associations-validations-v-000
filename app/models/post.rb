class Post < ActiveRecord::Base
  validates :name, presence: true
  validates :content, presence: true
  belongs_to :user
  has_many :post_tags
  has_many :tags , through: :post_tags

  def tags_ids
    self.tags
  end

  def tags_ids=(ids)
    ids.each do |id|
      if !id.empty?
        tag = Tag.find(id)
        self.tags << tag
      end
    end
  end
end
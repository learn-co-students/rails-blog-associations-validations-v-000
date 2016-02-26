class Post < ActiveRecord::Base

  belongs_to :user
  has_many :post_tags
  has_many :tags, through: :post_tags

  validates :name, :content, presence: true

  def tags=(ids)
    ids.each do |id|
      self.tags << Tag.find(id.to_i) if !id.empty?
    end
  end
  
end

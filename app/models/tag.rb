class Tag < ActiveRecord::Base
  belongs_to :post
  has_many :post_tags
  has_many :posts, through: :post_tags
  validates :name, uniqueness:true
  def tag_name
    "#{self.name}"
  end
end

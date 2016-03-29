class Post < ActiveRecord::Base
  
  belongs_to :user
  has_many :post_tags
  has_many :tags, through: :post_tags

  validates_presence_of :name, :content

  accepts_nested_attributes_for :tags

  def tag_names
    self.tags.collect{|t| t.name}
  end


end

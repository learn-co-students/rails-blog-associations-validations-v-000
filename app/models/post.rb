class Post < ActiveRecord::Base
  belongs_to :user
  has_many :post_tags
  has_many :tags, through: :post_tags
  
  validates :content, :name, presence: true

  def tag_ids=(tag_ids)

  	tag_ids.select {|x| x.present?}.each do |x|
  		self.tags << Tag.find(x.to_i)
  	end
  end

end

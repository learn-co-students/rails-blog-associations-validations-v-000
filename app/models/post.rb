class Post < ActiveRecord::Base
  validates :name, :content, presence: true

  belongs_to :user
  has_many :post_tags
  has_many :tags, through: :post_tags

  def create_post_tag(array)
    array.each do |x|
   
      if x == ""
        nil
      else
     
        PostTag.create(tag_id: x, post_id: self.id)
        end
    end
  end


  
end
